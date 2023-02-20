import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox(
      {this.fontStyle,
      this.alignment,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.onChange,
      this.text,
      this.width,
      this.margin});

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  bool? isRightCheck;

  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return InkWell(
      onTap: () {
        value = !(value!);
        onChange!(value!);
      },
      child: Container(
        width: width,
        child: isRightCheck! ? getRightSideCheckbox() : getLeftSideCheckbox(),
      ),
    );
  }

  Widget getRightSideCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getCheckboxWidget(),
      ],
    );
  }

  Widget getLeftSideCheckbox() {
    return Row(
      children: [
        getCheckboxWidget(),
        getTextWidget(),
      ],
    );
  }

  Widget getTextWidget() {
    return Text("");
  }

  Widget getCheckboxWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Checkbox(
        value: value ?? false,
        onChanged: (value) {
          onChange!(value!);
        },
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case CheckboxFontStyle.MetropolisMedium14:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w900,
          height: getVerticalSize(
            1.00,
          ),
        );
      case CheckboxFontStyle.MetropolisRegular16:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w900,
          height: getVerticalSize(
            1.00,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w900,
          height: getVerticalSize(
            1.00,
          ),
        );
    }
  }
}

enum CheckboxFontStyle {
  MetropolisRegular14,
  MetropolisMedium14,
  MetropolisRegular16
}
