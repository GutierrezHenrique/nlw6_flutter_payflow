import 'package:flutter/cupertino.dart';
import 'package:payflow/shared/themes/appcolors.dart';

class DividrVerticalWidget extends StatelessWidget {
  const DividrVerticalWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: double.maxFinite,
      color: AppColors.stroke
    );
  }
}