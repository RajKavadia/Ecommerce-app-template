import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:raj_s_application5/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(20),
        width: getHorizontalSize(32),
        toggleSize: 20,
        borderRadius: getHorizontalSize(
          10.00,
        ),
        activeColor: ColorConstant.gray50063,
        activeToggleColor: ColorConstant.green600,
        inactiveColor: ColorConstant.gray50063,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
