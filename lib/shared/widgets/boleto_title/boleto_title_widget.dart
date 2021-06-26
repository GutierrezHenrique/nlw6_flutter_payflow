import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_module.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class BoletoTitleWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTitleWidget({ Key? key, required this.data }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(data.name!), //
      subtitle: Text("Vencimento em ${data.dueDate}"),
        trailing: Text.rich(TextSpan(
          text: "R\$ ",
          style: TextStyles.trailingRegular,
          children: [
            TextSpan(
              text: "${data.value!.toStringAsFixed(2)}",
              style: TextStyles.trailingBold,
            ),
          ],)),
    );
  }
}