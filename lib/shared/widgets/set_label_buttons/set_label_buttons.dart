import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPress;
  final bool enabledPrimaryColor;
  final bool enabledSecondaryColor;
  const SetLabelButtons(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secondaryOnPress,
      this.enabledPrimaryColor = false,
      this.enabledSecondaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      height: 58,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(thickness: 1, height: 1, color: AppColors.stroke),
          Container(
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: LabelButton(
                  label: primaryLabel,
                  onPressed: primaryOnPressed,
                  style: enabledPrimaryColor ? TextStyles.buttonPrimary : null,
                )),
                DividrVerticalWidget(),
                Expanded(
                    child: LabelButton(
                  label: secondaryLabel,
                  onPressed: secondaryOnPress,
                  style: enabledSecondaryColor ? TextStyles.buttonPrimary : null,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
