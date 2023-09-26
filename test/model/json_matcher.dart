import 'dart:convert';

import 'package:test/test.dart';

JsonMatcher jsonMatch(String json) => JsonMatcher(json);

class JsonMatcher implements Matcher {
  const JsonMatcher(this.jsonStr);

  final String jsonStr;

  @override
  Description describe(Description description) {
    return description
      ..add('JsonMatcher\n')
      ..add(jsonStr);
  }

  @override
  Description describeMismatch(
    Object? item,
    Description mismatchDescription,
    Map<dynamic, dynamic> matchState,
    bool verbose,
  ) {
    final location = matchState['location'];
    if (location is List<String>) {
      mismatchDescription.add('${location.join()}\n');
    }
    final message = matchState['message'] as String;
    return mismatchDescription..add('$message\n');
  }

  @override
  bool matches(Object? item, Map<dynamic, dynamic> matchState) {
    if (item is! Map<String, dynamic>) {
      matchState['message'] = 'actual must be Map<String,dynamic>';
      return false;
    }
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    return _match([], item, json, matchState);
  }

  bool _match(
    List<String> location,
    dynamic actual,
    dynamic expected,
    Map<dynamic, dynamic> matchState,
  ) {
    if (actual is String ||
        actual is int ||
        actual is double ||
        actual is bool) {
      if (expected != actual) {
        matchState['location'] = location;
        matchState['message'] = 'value mismatched\n'
            'expected: $expected\n'
            '  actual: $actual';
        return false;
      }
      return true;
    } else if (actual is Map<String, dynamic>) {
      if (expected is! Map<String, dynamic>) {
        matchState['location'] = location;
        matchState['message'] = 'actual value is Map, but expected is not';
        return false;
      }
      return _matchMap(
        location,
        actual,
        expected,
        matchState,
      );
    } else if (actual is List<dynamic>) {
      if (expected is! List<dynamic>) {
        matchState['location'] = location;
        matchState['message'] = 'actual value is List, but expected is not';
        return false;
      }
      return _matchList(
        location,
        actual,
        expected,
        matchState,
      );
    } else {
      matchState['location'] = location;
      matchState['message'] = 'value type not supported: ${actual.runtimeType}';
      return false;
    }
  }

  bool _matchMap(
    List<String> location,
    Map<String, dynamic> actual,
    Map<String, dynamic> expected,
    Map<dynamic, dynamic> matchState,
  ) {
    for (final key in actual.keys) {
      if (!expected.containsKey(key)) {
        matchState['location'] = [...location, '.$key'];
        matchState['message'] = 'value not found in the expected';
        return false;
      }
      final result = _match(
        [...location, '.$key'],
        actual[key],
        expected[key],
        matchState,
      );
      if (!result) {
        return false;
      }
    }
    for (final key in expected.keys) {
      if (!actual.containsKey(key)) {
        matchState['location'] = [...location, '.$key'];
        matchState['message'] = 'value not found in the actual';
        return false;
      }
    }
    return true;
  }

  bool _matchList(
    List<String> location,
    List<dynamic> actual,
    List<dynamic> expected,
    Map<dynamic, dynamic> matchState,
  ) {
    if (actual.length != expected.length) {
      matchState['location'] = location;
      matchState['message'] = 'list length mismatch\n'
          'expected: ${expected.length}\n'
          '  actual: ${actual.length}';
      return false;
    }
    for (var idx = 0; idx < actual.length; idx++) {
      final result = _match(
        [...location, '[$idx]'],
        actual[idx],
        expected[idx],
        matchState,
      );
      if (!result) {
        return false;
      }
    }
    return true;
  }
}
