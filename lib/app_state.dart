import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ticketNumber = prefs.getInt('ff_ticketNumber') ?? _ticketNumber;
    });
    _safeInit(() {
      _dayTime = prefs.getInt('ff_dayTime') ?? _dayTime;
    });
    _safeInit(() {
      _hourTime = prefs.getInt('ff_hourTime') ?? _hourTime;
    });
    _safeInit(() {
      _minTime = prefs.getInt('ff_minTime') ?? _minTime;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_decrease')) {
        try {
          final serializedData = prefs.getString('ff_decrease') ?? '{}';
          _decrease = SubStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _ticketNumber = 0;
  int get ticketNumber => _ticketNumber;
  set ticketNumber(int value) {
    _ticketNumber = value;
    prefs.setInt('ff_ticketNumber', value);
  }

  int _dayTime = 0;
  int get dayTime => _dayTime;
  set dayTime(int value) {
    _dayTime = value;
    prefs.setInt('ff_dayTime', value);
  }

  int _hourTime = 0;
  int get hourTime => _hourTime;
  set hourTime(int value) {
    _hourTime = value;
    prefs.setInt('ff_hourTime', value);
  }

  int _minTime = 0;
  int get minTime => _minTime;
  set minTime(int value) {
    _minTime = value;
    prefs.setInt('ff_minTime', value);
  }

  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  set dateTime(DateTime? value) {
    _dateTime = value;
  }

  SubStruct _decrease = SubStruct.fromSerializableMap(jsonDecode('{}'));
  SubStruct get decrease => _decrease;
  set decrease(SubStruct value) {
    _decrease = value;
    prefs.setString('ff_decrease', value.serialize());
  }

  void updateDecreaseStruct(Function(SubStruct) updateFn) {
    updateFn(_decrease);
    prefs.setString('ff_decrease', _decrease.serialize());
  }

  String _ticketEmial = '';
  String get ticketEmial => _ticketEmial;
  set ticketEmial(String value) {
    _ticketEmial = value;
  }

  String _ticketName = '';
  String get ticketName => _ticketName;
  set ticketName(String value) {
    _ticketName = value;
  }

  int _seat1 = 1;
  int get seat1 => _seat1;
  set seat1(int value) {
    _seat1 = value;
  }

  int _seat2 = 2;
  int get seat2 => _seat2;
  set seat2(int value) {
    _seat2 = value;
  }

  int _seat3 = 3;
  int get seat3 => _seat3;
  set seat3(int value) {
    _seat3 = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
