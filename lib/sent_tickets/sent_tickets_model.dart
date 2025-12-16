import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'sent_tickets_widget.dart' show SentTicketsWidget;
import 'package:flutter/material.dart';

class SentTicketsModel extends FlutterFlowModel<SentTicketsWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (Reloadly)] action in Text widget.
  ApiCallResponse? apiResultt5l;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
