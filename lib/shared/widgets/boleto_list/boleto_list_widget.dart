import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_module.dart';
import 'package:payflow/shared/widgets/boleto_title/boleto_title_widget.dart';

import 'boleto_list_controller.dart';

class BoletoListWidget extends StatefulWidget {
  final BoletoListController controller;
  const BoletoListWidget({Key? key, required this.controller}) : super(key: key);

  @override
  _BoletoListWidgetState createState() => _BoletoListWidgetState();
}

class _BoletoListWidgetState extends State<BoletoListWidget> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return Column(children: controller.boletos.map((e) => BoletoTitleWidget(data: e)).toList());
  }
}
