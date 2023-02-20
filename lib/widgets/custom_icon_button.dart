import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case IconButtonPadding.PaddingAll2:
        return getPadding(
          all: 2,
        );
      case IconButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillRed700:
        return ColorConstant.red700;
      case IconButtonVariant.OutlineBlack90019:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineRed70028:
        return ColorConstant.red700;
      case IconButtonVariant.OutlineBlack90019_1:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder26:
        return BorderRadius.circular(
          getHorizontalSize(
            26.00,
          ),
        );
      case IconButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack90019:
        return [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case IconButtonVariant.OutlineRed70028:
        return [
          BoxShadow(
            color: ColorConstant.red70028,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case IconButtonVariant.OutlineBlack90019_1:
        return [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case IconButtonVariant.FillRed700:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
    }
  }
}

enum IconButtonShape {
  CircleBorder18,
  CircleBorder26,
  RoundedBorder4,
}
enum IconButtonPadding {
  PaddingAll6,
  PaddingAll14,
  PaddingAll2,
  PaddingAll10,
}
enum IconButtonVariant {
  White,
  FillRed700,
  OutlineBlack90019,
  OutlineRed70028,
  OutlineBlack90019_1,
}
