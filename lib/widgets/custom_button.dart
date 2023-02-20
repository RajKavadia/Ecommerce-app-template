import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case ButtonPadding.PaddingT12:
        return getPadding(
          top: 12,
          right: 12,
          bottom: 12,
        );
      default:
        return getPadding(
          all: 10,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillRed700:
        return ColorConstant.red700;
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGray900:
        return ColorConstant.gray900;
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.OutlineGray900:
        return null;
      default:
        return ColorConstant.red700;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.White:
        return BorderSide(
          color: ColorConstant.gray500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray900:
        return BorderSide(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillRed700:
      case ButtonVariant.White:
      case ButtonVariant.OutlineGray900:
      case ButtonVariant.FillGray900:
        return null;
      default:
        return ColorConstant.red8003f;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case ButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.CustomBorderTL8:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              8.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              8.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MetropolisSemiBold11:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Metropolis',
          fontWeight: FontWeight.w900,
          height: getVerticalSize(
            1.00,
          ),
        );
      case ButtonFontStyle.MetropolisMedium14Gray900:
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
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
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

enum ButtonShape {
  Square,
  CircleBorder24,
  CircleBorder18,
  CircleBorder12,
  RoundedBorder8,
  CustomBorderTL8,
  CircleBorder15,
}
enum ButtonPadding {
  PaddingAll16,
  PaddingAll10,
  PaddingAll6,
  PaddingT12,
}
enum ButtonVariant {
  OutlineRed8003f,
  OutlineWhiteA700,
  FillRed700,
  White,
  OutlineGray900,
  FillGray900,
}
enum ButtonFontStyle {
  MetropolisMedium14,
  MetropolisSemiBold11,
  MetropolisMedium14Gray900,
}
