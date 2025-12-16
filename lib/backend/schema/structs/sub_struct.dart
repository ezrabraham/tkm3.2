// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubStruct extends BaseStruct {
  SubStruct({
    int? subtract,
  }) : _subtract = subtract;

  // "subtract" field.
  int? _subtract;
  int get subtract => _subtract ?? 0;
  set subtract(int? val) => _subtract = val;

  void incrementSubtract(int amount) => subtract = subtract + amount;

  bool hasSubtract() => _subtract != null;

  static SubStruct fromMap(Map<String, dynamic> data) => SubStruct(
        subtract: castToType<int>(data['subtract']),
      );

  static SubStruct? maybeFromMap(dynamic data) =>
      data is Map ? SubStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'subtract': _subtract,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subtract': serializeParam(
          _subtract,
          ParamType.int,
        ),
      }.withoutNulls;

  static SubStruct fromSerializableMap(Map<String, dynamic> data) => SubStruct(
        subtract: deserializeParam(
          data['subtract'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SubStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubStruct && subtract == other.subtract;
  }

  @override
  int get hashCode => const ListEquality().hash([subtract]);
}

SubStruct createSubStruct({
  int? subtract,
}) =>
    SubStruct(
      subtract: subtract,
    );
