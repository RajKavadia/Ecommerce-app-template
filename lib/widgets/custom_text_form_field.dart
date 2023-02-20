import 'package:flutter/material.dart';
import 'package:raj_s_application5/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.MetropolisMedium14Gray900:
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
      case TextFormFieldFontStyle.MetropolisRegular14:
        return TextStyle(
          color: ColorConstant.gray500,
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
          color: ColorConstant.gray500,
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

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case TextFormFieldShape.CustomBorderLR35:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              8.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              35.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              8.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              35.00,
            ),
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporangeA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.deepOrangeA700,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineGray500:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray500,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporangeA700:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineGray500:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineDeeporangeA700:
        return true;
      case TextFormFieldVariant.OutlineGray500:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case TextFormFieldPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case TextFormFieldPadding.PaddingT10:
        return getPadding(
          left: 10,
          top: 10,
          bottom: 10,
        );
      default:
        return getPadding(
          left: 20,
          top: 24,
          right: 20,
          bottom: 24,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder4,
  RoundedBorder8,
  CustomBorderLR35,
}
enum TextFormFieldPadding {
  PaddingT24,
  PaddingAll12,
  PaddingAll15,
  PaddingT10,
}
enum TextFormFieldVariant {
  None,
  White,
  OutlineDeeporangeA700,
  OutlineGray500,
}
enum TextFormFieldFontStyle {
  MetropolisMedium14,
  MetropolisMedium14Gray900,
  MetropolisRegular14,
}
