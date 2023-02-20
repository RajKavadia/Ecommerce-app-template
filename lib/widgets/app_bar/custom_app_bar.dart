import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar(
      {required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgShadowBlack90014:
        return Container(
          height: getVerticalSize(
            44,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray50,
            boxShadow: [
              BoxShadow(
                color: ColorConstant.black90014,
                spreadRadius: getHorizontalSize(
                  2,
                ),
                blurRadius: getHorizontalSize(
                  2,
                ),
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
        );
      case Style.bgFillGray50:
        return Container(
          height: getVerticalSize(
            44,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.gray50,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgShadowBlack90014,
  bgFillGray50,
}
