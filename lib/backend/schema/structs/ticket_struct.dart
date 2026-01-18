// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketStruct extends BaseStruct {
  TicketStruct({
    String? id,
    String? eventName,
    String? eventVenue,
    String? eventSchedule,
    String? eventPicture,
    String? section,
    String? row,
    String? ticketType,
    String? seatTag,
    String? location,
    double? price,
    DateTime? createdAt,
    String? seat1Section,
    String? seat1Row,
    String? seat1Number,
    String? seat2Section,
    String? seat2Row,
    String? seat2Number,
    String? seat3Section,
    String? seat3Row,
    String? seat3Number,
  })  : _id = id,
        _eventName = eventName,
        _eventVenue = eventVenue,
        _eventSchedule = eventSchedule,
        _eventPicture = eventPicture,
        _section = section,
        _row = row,
        _ticketType = ticketType,
        _seatTag = seatTag,
        _location = location,
        _price = price,
        _createdAt = createdAt,
        _seat1Section = seat1Section,
        _seat1Row = seat1Row,
        _seat1Number = seat1Number,
        _seat2Section = seat2Section,
        _seat2Row = seat2Row,
        _seat2Number = seat2Number,
        _seat3Section = seat3Section,
        _seat3Row = seat3Row,
        _seat3Number = seat3Number;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  set eventName(String? val) => _eventName = val;

  bool hasEventName() => _eventName != null;

  // "eventVenue" field.
  String? _eventVenue;
  String get eventVenue => _eventVenue ?? '';
  set eventVenue(String? val) => _eventVenue = val;

  bool hasEventVenue() => _eventVenue != null;

  // "eventSchedule" field.
  String? _eventSchedule;
  String get eventSchedule => _eventSchedule ?? '';
  set eventSchedule(String? val) => _eventSchedule = val;

  bool hasEventSchedule() => _eventSchedule != null;

  // "eventPicture" field.
  String? _eventPicture;
  String get eventPicture => _eventPicture ?? '';
  set eventPicture(String? val) => _eventPicture = val;

  bool hasEventPicture() => _eventPicture != null;

  // "section" field.
  String? _section;
  String get section => _section ?? '';
  set section(String? val) => _section = val;

  bool hasSection() => _section != null;

  // "row" field.
  String? _row;
  String get row => _row ?? '';
  set row(String? val) => _row = val;

  bool hasRow() => _row != null;

  // "ticketType" field.
  String? _ticketType;
  String get ticketType => _ticketType ?? '';
  set ticketType(String? val) => _ticketType = val;

  bool hasTicketType() => _ticketType != null;

  // "seatTag" field.
  String? _seatTag;
  String get seatTag => _seatTag ?? '';
  set seatTag(String? val) => _seatTag = val;

  bool hasSeatTag() => _seatTag != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  bool hasPrice() => _price != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "seat1Section" field.
  String? _seat1Section;
  String get seat1Section => _seat1Section ?? '';
  set seat1Section(String? val) => _seat1Section = val;

  bool hasSeat1Section() => _seat1Section != null;

  // "seat1Row" field.
  String? _seat1Row;
  String get seat1Row => _seat1Row ?? '';
  set seat1Row(String? val) => _seat1Row = val;

  bool hasSeat1Row() => _seat1Row != null;

  // "seat1Number" field.
  String? _seat1Number;
  String get seat1Number => _seat1Number ?? '';
  set seat1Number(String? val) => _seat1Number = val;

  bool hasSeat1Number() => _seat1Number != null;

  // "seat2Section" field.
  String? _seat2Section;
  String get seat2Section => _seat2Section ?? '';
  set seat2Section(String? val) => _seat2Section = val;

  bool hasSeat2Section() => _seat2Section != null;

  // "seat2Row" field.
  String? _seat2Row;
  String get seat2Row => _seat2Row ?? '';
  set seat2Row(String? val) => _seat2Row = val;

  bool hasSeat2Row() => _seat2Row != null;

  // "seat2Number" field.
  String? _seat2Number;
  String get seat2Number => _seat2Number ?? '';
  set seat2Number(String? val) => _seat2Number = val;

  bool hasSeat2Number() => _seat2Number != null;

  // "seat3Section" field.
  String? _seat3Section;
  String get seat3Section => _seat3Section ?? '';
  set seat3Section(String? val) => _seat3Section = val;

  bool hasSeat3Section() => _seat3Section != null;

  // "seat3Row" field.
  String? _seat3Row;
  String get seat3Row => _seat3Row ?? '';
  set seat3Row(String? val) => _seat3Row = val;

  bool hasSeat3Row() => _seat3Row != null;

  // "seat3Number" field.
  String? _seat3Number;
  String get seat3Number => _seat3Number ?? '';
  set seat3Number(String? val) => _seat3Number = val;

  bool hasSeat3Number() => _seat3Number != null;

  static TicketStruct fromMap(Map<String, dynamic> data) => TicketStruct(
        id: castToType<String>(data['id']),
        eventName: castToType<String>(data['eventName']),
        eventVenue: castToType<String>(data['eventVenue']),
        eventSchedule: castToType<String>(data['eventSchedule']),
        eventPicture: castToType<String>(data['eventPicture']),
        section: castToType<String>(data['section']),
        row: castToType<String>(data['row']),
        ticketType: castToType<String>(data['ticketType']),
        seatTag: castToType<String>(data['seatTag']),
        location: castToType<String>(data['location']),
        price: castToType<double>(data['price']),
        createdAt: data['createdAt'] != null
            ? DateTime.fromMillisecondsSinceEpoch(
                castToType<int>(data['createdAt'])!)
            : null,
        seat1Section: castToType<String>(data['seat1Section']),
        seat1Row: castToType<String>(data['seat1Row']),
        seat1Number: castToType<String>(data['seat1Number']),
        seat2Section: castToType<String>(data['seat2Section']),
        seat2Row: castToType<String>(data['seat2Row']),
        seat2Number: castToType<String>(data['seat2Number']),
        seat3Section: castToType<String>(data['seat3Section']),
        seat3Row: castToType<String>(data['seat3Row']),
        seat3Number: castToType<String>(data['seat3Number']),
      );

  static TicketStruct? maybeFromMap(dynamic data) =>
      data is Map ? TicketStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'eventName': _eventName,
        'eventVenue': _eventVenue,
        'eventSchedule': _eventSchedule,
        'eventPicture': _eventPicture,
        'section': _section,
        'row': _row,
        'ticketType': _ticketType,
        'seatTag': _seatTag,
        'location': _location,
        'price': _price,
        'createdAt': _createdAt?.millisecondsSinceEpoch,
        'seat1Section': _seat1Section,
        'seat1Row': _seat1Row,
        'seat1Number': _seat1Number,
        'seat2Section': _seat2Section,
        'seat2Row': _seat2Row,
        'seat2Number': _seat2Number,
        'seat3Section': _seat3Section,
        'seat3Row': _seat3Row,
        'seat3Number': _seat3Number,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(_id, ParamType.String),
        'eventName': serializeParam(_eventName, ParamType.String),
        'eventVenue': serializeParam(_eventVenue, ParamType.String),
        'eventSchedule': serializeParam(_eventSchedule, ParamType.String),
        'eventPicture': serializeParam(_eventPicture, ParamType.String),
        'section': serializeParam(_section, ParamType.String),
        'row': serializeParam(_row, ParamType.String),
        'ticketType': serializeParam(_ticketType, ParamType.String),
        'seatTag': serializeParam(_seatTag, ParamType.String),
        'location': serializeParam(_location, ParamType.String),
        'price': serializeParam(_price, ParamType.double),
        'createdAt': serializeParam(
          _createdAt?.millisecondsSinceEpoch,
          ParamType.int,
        ),
        'seat1Section': serializeParam(_seat1Section, ParamType.String),
        'seat1Row': serializeParam(_seat1Row, ParamType.String),
        'seat1Number': serializeParam(_seat1Number, ParamType.String),
        'seat2Section': serializeParam(_seat2Section, ParamType.String),
        'seat2Row': serializeParam(_seat2Row, ParamType.String),
        'seat2Number': serializeParam(_seat2Number, ParamType.String),
        'seat3Section': serializeParam(_seat3Section, ParamType.String),
        'seat3Row': serializeParam(_seat3Row, ParamType.String),
        'seat3Number': serializeParam(_seat3Number, ParamType.String),
      }.withoutNulls;

  static TicketStruct fromSerializableMap(Map<String, dynamic> data) =>
      TicketStruct(
        id: deserializeParam(data['id'], ParamType.String, false),
        eventName: deserializeParam(data['eventName'], ParamType.String, false),
        eventVenue: deserializeParam(data['eventVenue'], ParamType.String, false),
        eventSchedule:
            deserializeParam(data['eventSchedule'], ParamType.String, false),
        eventPicture:
            deserializeParam(data['eventPicture'], ParamType.String, false),
        section: deserializeParam(data['section'], ParamType.String, false),
        row: deserializeParam(data['row'], ParamType.String, false),
        ticketType: deserializeParam(data['ticketType'], ParamType.String, false),
        seatTag: deserializeParam(data['seatTag'], ParamType.String, false),
        location: deserializeParam(data['location'], ParamType.String, false),
        price: deserializeParam(data['price'], ParamType.double, false),
        createdAt: data['createdAt'] != null
            ? DateTime.fromMillisecondsSinceEpoch(
                deserializeParam(data['createdAt'], ParamType.int, false)!)
            : null,
        seat1Section: deserializeParam(data['seat1Section'], ParamType.String, false),
        seat1Row: deserializeParam(data['seat1Row'], ParamType.String, false),
        seat1Number: deserializeParam(data['seat1Number'], ParamType.String, false),
        seat2Section: deserializeParam(data['seat2Section'], ParamType.String, false),
        seat2Row: deserializeParam(data['seat2Row'], ParamType.String, false),
        seat2Number: deserializeParam(data['seat2Number'], ParamType.String, false),
        seat3Section: deserializeParam(data['seat3Section'], ParamType.String, false),
        seat3Row: deserializeParam(data['seat3Row'], ParamType.String, false),
        seat3Number: deserializeParam(data['seat3Number'], ParamType.String, false),
      );

  @override
  String toString() => 'TicketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TicketStruct &&
        id == other.id &&
        eventName == other.eventName &&
        eventVenue == other.eventVenue &&
        eventSchedule == other.eventSchedule &&
        eventPicture == other.eventPicture &&
        section == other.section &&
        row == other.row &&
        ticketType == other.ticketType &&
        seatTag == other.seatTag &&
        location == other.location &&
        price == other.price &&
        createdAt == other.createdAt &&
        seat1Section == other.seat1Section &&
        seat1Row == other.seat1Row &&
        seat1Number == other.seat1Number &&
        seat2Section == other.seat2Section &&
        seat2Row == other.seat2Row &&
        seat2Number == other.seat2Number &&
        seat3Section == other.seat3Section &&
        seat3Row == other.seat3Row &&
        seat3Number == other.seat3Number;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        eventName,
        eventVenue,
        eventSchedule,
        eventPicture,
        section,
        row,
        ticketType,
        seatTag,
        location,
        price,
        createdAt,
        seat1Section,
        seat1Row,
        seat1Number,
        seat2Section,
        seat2Row,
        seat2Number,
        seat3Section,
        seat3Row,
        seat3Number
      ]);
}

TicketStruct createTicketStruct({
  String? id,
  String? eventName,
  String? eventVenue,
  String? eventSchedule,
  String? eventPicture,
  String? section,
  String? row,
  String? ticketType,
  String? seatTag,
  String? location,
  double? price,
  DateTime? createdAt,
  String? seat1Section,
  String? seat1Row,
  String? seat1Number,
  String? seat2Section,
  String? seat2Row,
  String? seat2Number,
  String? seat3Section,
  String? seat3Row,
  String? seat3Number,
}) =>
    TicketStruct(
      id: id,
      eventName: eventName,
      eventVenue: eventVenue,
      eventSchedule: eventSchedule,
      eventPicture: eventPicture,
      section: section,
      row: row,
      ticketType: ticketType,
      seatTag: seatTag,
      location: location,
      price: price,
      createdAt: createdAt,
      seat1Section: seat1Section,
      seat1Row: seat1Row,
      seat1Number: seat1Number,
      seat2Section: seat2Section,
      seat2Row: seat2Row,
      seat2Number: seat2Number,
      seat3Section: seat3Section,
      seat3Row: seat3Row,
      seat3Number: seat3Number,
    );


