import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/index.dart';
import 'ticket_cards_widget.dart' show TicketCardsWidget;
import 'package:flutter/material.dart';

class TicketCardsModel extends FlutterFlowModel<TicketCardsWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
