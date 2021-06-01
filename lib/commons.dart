import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

const _kColorPrimary = Colors.blue;
const _kColorPrimaryDark = Colors.indigo;
const _kColorPrimaryLight = Colors.lightBlueAccent;
const _kColorButtonOverlay = Colors.black12;
const _kColorTextDark = Colors.black87;
const _kColorTextLight = Colors.white;
const _kColorTextMedium = Colors.black54;
const _kButtonMinHeight = 45.0;
const _kFontSizeNormal = 13.0;
const _kFontSizeMedium = 11.0;
const _kBorderRadius = 4.0;

class LoginTemplateStyle {
  final EdgeInsets screenPadding;
  final double verticalSpacingBetweenComponents;
  final double verticalSpacingBetweenSubComponents;
  final double verticalSpacingBetweenGroup;
  final TextStyle inlineButtonTextStyle;
  final TextStyle buttonTextStyle;
  final TextStyle messageTextStyle;
  final TextStyle socialButtonTextStyle;
  final BoxShadow itemShadow;
  final TextStyle textFieldTextStyle;
  final TextStyle textFieldHintTextStyle;
  final TextStyle textFieldErrorTextStyle;
  final ButtonStyle inlineButtonStyle;
  final Color primary;
  final Color primaryDark;
  final Color primaryLight;
  final Color buttonOverlay;
  final ButtonStyle buttonStyle;
  final ButtonStyle socialButtonStyle;
  final EdgeInsets textFieldPadding;

  LoginTemplateStyle({
    required this.textFieldHintTextStyle,
    required this.textFieldErrorTextStyle,
    required this.socialButtonStyle,
    required this.screenPadding,
    required this.verticalSpacingBetweenComponents,
    required this.verticalSpacingBetweenSubComponents,
    required this.verticalSpacingBetweenGroup,
    required this.inlineButtonTextStyle,
    required this.buttonTextStyle,
    required this.messageTextStyle,
    required this.socialButtonTextStyle,
    required this.itemShadow,
    required this.textFieldTextStyle,
    required this.inlineButtonStyle,
    required this.primary,
    required this.primaryDark,
    required this.primaryLight,
    required this.buttonOverlay,
    required this.buttonStyle,
    required this.textFieldPadding,
  });

  static LoginTemplateStyle resolve(LoginTemplateStyle? style) {
    return style ??
        LoginTemplateStyle(
          primary: _kColorPrimary,
          primaryDark: _kColorPrimaryDark,
          primaryLight: _kColorPrimaryLight,
          buttonOverlay: _kColorButtonOverlay,
          inlineButtonStyle: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_kBorderRadius),
            )),
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 2)),
            elevation: MaterialStateProperty.all<double>(0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            overlayColor: MaterialStateProperty.all<Color>(_kColorPrimaryLight),
            minimumSize: MaterialStateProperty.all<Size>(Size.zero),
          ),
          textFieldTextStyle: const TextStyle(
            fontSize: _kFontSizeNormal,
            color: _kColorTextDark,
          ),
          screenPadding: const EdgeInsets.all(22),
          verticalSpacingBetweenComponents: 10,
          verticalSpacingBetweenSubComponents: 6,
          verticalSpacingBetweenGroup: 22,
          inlineButtonTextStyle: const TextStyle(
            color: _kColorTextMedium,
            fontSize: _kFontSizeMedium,
          ),
          buttonTextStyle: const TextStyle(
            color: _kColorTextLight,
            fontSize: _kFontSizeNormal,
          ),
          messageTextStyle: const TextStyle(
            fontSize: _kFontSizeMedium,
            color: Colors.black45,
          ),
          socialButtonTextStyle: const TextStyle(
            color: _kColorTextDark,
            fontSize: _kFontSizeNormal,
          ),
          itemShadow: const BoxShadow(
            color: Colors.black12,
            offset: Offset(2, 2),
            blurRadius: 7,
            spreadRadius: 2,
          ),
          buttonStyle: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_kBorderRadius),
            )),
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
            elevation: MaterialStateProperty.all<double>(7),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: MaterialStateProperty.all<Color>(_kColorPrimary),
            overlayColor:
                MaterialStateProperty.all<Color>(_kColorButtonOverlay),
            minimumSize: MaterialStateProperty.all<Size>(
                Size(_kButtonMinHeight, _kButtonMinHeight)),
          ),
          socialButtonStyle: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_kBorderRadius),
            )),
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
            elevation: MaterialStateProperty.all<double>(7.0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: MaterialStateProperty.all<Color>(_kColorTextLight),
            overlayColor:
                MaterialStateProperty.all<Color>(_kColorButtonOverlay),
            minimumSize: MaterialStateProperty.all<Size>(
                Size(_kButtonMinHeight, _kButtonMinHeight)),
          ),
          textFieldHintTextStyle: const TextStyle(
            fontSize: _kFontSizeNormal,
            color: _kColorTextMedium,
          ),
          textFieldErrorTextStyle: const TextStyle(
            fontSize: _kFontSizeMedium,
            color: Colors.redAccent,
          ),
          textFieldPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        );
  }

  static LoginTemplateStyle only(
    EdgeInsets? screenPadding,
    double? verticalSpacingBetweenComponents,
    double? verticalSpacingBetweenSubComponents,
    double? verticalSpacingBetweenGroup,
    TextStyle? inlineButtonTextStyle,
    TextStyle? buttonTextStyle,
    TextStyle? messageTextStyle,
    TextStyle? socialButtonTextStyle,
    BoxShadow? itemShadow,
    TextStyle? textFieldTextStyle,
    TextStyle? textFieldHintTextStyle,
    TextStyle? textFieldErrorTextStyle,
    ButtonStyle? inlineButtonStyle,
    Color? primary,
    Color? primaryDark,
    Color? primaryLight,
    Color? buttonOverlay,
    ButtonStyle? buttonStyle,
    ButtonStyle? socialButtonStyle,
    EdgeInsets? textFieldPadding,
  ) {
    return resolve(null).copyWith(
      screenPadding: screenPadding,
      verticalSpacingBetweenComponents: verticalSpacingBetweenComponents,
      verticalSpacingBetweenSubComponents: verticalSpacingBetweenSubComponents,
      verticalSpacingBetweenGroup: verticalSpacingBetweenGroup,
      inlineButtonTextStyle: inlineButtonTextStyle,
      buttonTextStyle: buttonTextStyle,
      messageTextStyle: messageTextStyle,
      socialButtonTextStyle: socialButtonTextStyle,
      itemShadow: itemShadow,
      textFieldTextStyle: textFieldTextStyle,
      textFieldHintTextStyle: textFieldHintTextStyle,
      textFieldErrorTextStyle: textFieldErrorTextStyle,
      inlineButtonStyle: inlineButtonStyle,
      primary: primary,
      primaryDark: primaryDark,
      primaryLight: primaryLight,
      buttonOverlay: buttonOverlay,
      buttonStyle: buttonStyle,
      socialButtonStyle: socialButtonStyle,
      textFieldPadding: textFieldPadding,
    );
  }

  LoginTemplateStyle copyWith({
    EdgeInsets? screenPadding,
    double? verticalSpacingBetweenComponents,
    double? verticalSpacingBetweenSubComponents,
    double? verticalSpacingBetweenGroup,
    TextStyle? inlineButtonTextStyle,
    TextStyle? buttonTextStyle,
    TextStyle? messageTextStyle,
    TextStyle? socialButtonTextStyle,
    BoxShadow? itemShadow,
    TextStyle? textFieldTextStyle,
    TextStyle? textFieldHintTextStyle,
    TextStyle? textFieldErrorTextStyle,
    ButtonStyle? inlineButtonStyle,
    Color? primary,
    Color? primaryDark,
    Color? primaryLight,
    Color? buttonOverlay,
    ButtonStyle? buttonStyle,
    ButtonStyle? socialButtonStyle,
    EdgeInsets? textFieldPadding,
  }) {
    if ((screenPadding == null ||
            identical(screenPadding, this.screenPadding)) &&
        (verticalSpacingBetweenComponents == null ||
            identical(verticalSpacingBetweenComponents,
                this.verticalSpacingBetweenComponents)) &&
        (verticalSpacingBetweenSubComponents == null ||
            identical(verticalSpacingBetweenSubComponents,
                this.verticalSpacingBetweenSubComponents)) &&
        (verticalSpacingBetweenGroup == null ||
            identical(verticalSpacingBetweenGroup,
                this.verticalSpacingBetweenGroup)) &&
        (inlineButtonTextStyle == null ||
            identical(inlineButtonTextStyle, this.inlineButtonTextStyle)) &&
        (buttonTextStyle == null ||
            identical(buttonTextStyle, this.buttonTextStyle)) &&
        (messageTextStyle == null ||
            identical(messageTextStyle, this.messageTextStyle)) &&
        (socialButtonTextStyle == null ||
            identical(socialButtonTextStyle, this.socialButtonTextStyle)) &&
        (itemShadow == null || identical(itemShadow, this.itemShadow)) &&
        (textFieldTextStyle == null ||
            identical(textFieldTextStyle, this.textFieldTextStyle)) &&
        (textFieldHintTextStyle == null ||
            identical(textFieldHintTextStyle, this.textFieldHintTextStyle)) &&
        (textFieldErrorTextStyle == null ||
            identical(textFieldErrorTextStyle, this.textFieldErrorTextStyle)) &&
        (inlineButtonStyle == null ||
            identical(inlineButtonStyle, this.inlineButtonStyle)) &&
        (primary == null || identical(primary, this.primary)) &&
        (primaryDark == null || identical(primaryDark, this.primaryDark)) &&
        (primaryLight == null || identical(primaryLight, this.primaryLight)) &&
        (buttonOverlay == null ||
            identical(buttonOverlay, this.buttonOverlay)) &&
        (buttonStyle == null || identical(buttonStyle, this.buttonStyle)) &&
        (socialButtonStyle == null ||
            identical(socialButtonStyle, this.socialButtonStyle)) &&
        (textFieldPadding == null ||
            identical(textFieldPadding, this.textFieldPadding))) {
      return this;
    }

    return new LoginTemplateStyle(
      screenPadding: screenPadding ?? this.screenPadding,
      verticalSpacingBetweenComponents: verticalSpacingBetweenComponents ??
          this.verticalSpacingBetweenComponents,
      verticalSpacingBetweenSubComponents:
          verticalSpacingBetweenSubComponents ??
              this.verticalSpacingBetweenSubComponents,
      verticalSpacingBetweenGroup:
          verticalSpacingBetweenGroup ?? this.verticalSpacingBetweenGroup,
      inlineButtonTextStyle:
          inlineButtonTextStyle ?? this.inlineButtonTextStyle,
      buttonTextStyle: buttonTextStyle ?? this.buttonTextStyle,
      messageTextStyle: messageTextStyle ?? this.messageTextStyle,
      socialButtonTextStyle:
          socialButtonTextStyle ?? this.socialButtonTextStyle,
      itemShadow: itemShadow ?? this.itemShadow,
      textFieldTextStyle: textFieldTextStyle ?? this.textFieldTextStyle,
      textFieldHintTextStyle:
          textFieldHintTextStyle ?? this.textFieldHintTextStyle,
      textFieldErrorTextStyle:
          textFieldErrorTextStyle ?? this.textFieldErrorTextStyle,
      inlineButtonStyle: inlineButtonStyle ?? this.inlineButtonStyle,
      primary: primary ?? this.primary,
      primaryDark: primaryDark ?? this.primaryDark,
      primaryLight: primaryLight ?? this.primaryLight,
      buttonOverlay: buttonOverlay ?? this.buttonOverlay,
      buttonStyle: buttonStyle ?? this.buttonStyle,
      socialButtonStyle: socialButtonStyle ?? this.socialButtonStyle,
      textFieldPadding: textFieldPadding ?? this.textFieldPadding,
    );
  }
}

class LoginTemplateInlineButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final LoginTemplateStyle style;

  const LoginTemplateInlineButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              FocusScope.of(context).unfocus();
              onPressed!();
            }
          : null,
      child: Text(
        text,
        style: style.inlineButtonTextStyle,
      ),
      style: style.inlineButtonStyle,
    );
  }
}

class LoginTemplateButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final LoginTemplateStyle style;

  const LoginTemplateButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              FocusScope.of(context).unfocus();
              onPressed!();
            }
          : null,
      child: Text(
        text,
        style: style.buttonTextStyle,
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
      style: style.buttonStyle,
    );
  }
}

class LoginTemplateSocialButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final Widget icon;
  final LoginTemplateStyle style;

  const LoginTemplateSocialButton({
    Key? key,
    required this.text,
    this.onPressed,
    required this.icon,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              FocusScope.of(context).unfocus();
              onPressed!();
            }
          : null,
      child: Row(
        children: [
          icon,
          Expanded(
            child: Text(
              text,
              style: style.socialButtonTextStyle,
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
          IgnorePointer(
            child: Opacity(
              child: icon,
              opacity: 0.0,
            ),
          ),
        ],
      ),
      style: style.socialButtonStyle,
    );
  }
}

class LoginTemplateTextField extends StatelessWidget {
  final LoginTemplateStyle style;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final String? hintText;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatters;
  final Function()? onTap;
  final TextEditingController? controller;

  const LoginTemplateTextField({
    Key? key,
    required this.style,
    required this.textInputAction,
    required this.keyboardType,
    this.hintText,
    this.errorText,
    this.inputFormatters,
    this.onTap,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: style.textFieldPadding,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: (style.buttonStyle.shape
                          ?.resolve(MaterialState.values.toSet())
                      as RoundedRectangleBorder)
                  .borderRadius,
            ),
            shadows: [
              style.itemShadow,
            ],
          ),
          child: TextField(
            textAlign: TextAlign.left,
            textInputAction: textInputAction,
            keyboardType: keyboardType,
            maxLines: 1,
            style: style.textFieldTextStyle,
            obscureText: keyboardType == TextInputType.visiblePassword,
            cursorColor: style.primary,
            inputFormatters: inputFormatters,
            onTap: onTap,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: style.textFieldHintTextStyle,
              hintMaxLines: 1,
              border: InputBorder.none,
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenSubComponents,
              left: style.verticalSpacingBetweenSubComponents,
              right: style.verticalSpacingBetweenSubComponents,
            ),
            child: Text(
              errorText!,
              style: style.textFieldErrorTextStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
      ],
    );
  }
}

class LoginTemplateTerm extends StatelessWidget {
  final LoginTemplateStyle style;
  final Function() onPressedTermOfService;
  final Function() onPressedPrivacyPolicy;
  final String text;
  final String termOfServiceButtonText;
  final String privacyPolicyButtonText;

  const LoginTemplateTerm({
    Key? key,
    required this.style,
    required this.onPressedTermOfService,
    required this.onPressedPrivacyPolicy,
    this.text: 'By registering, you agree to our ',
    this.termOfServiceButtonText: 'Term of service',
    this.privacyPolicyButtonText: 'Privacy Policy.',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: style.verticalSpacingBetweenGroup,
        left: style.verticalSpacingBetweenGroup,
        right: style.verticalSpacingBetweenGroup,
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Text(
            text,
            style: style.messageTextStyle,
          ),
          LoginTemplateInlineButton(
            text: termOfServiceButtonText,
            style: style,
            onPressed: onPressedTermOfService,
          ),
          Text(
            ' & ',
            style: style.messageTextStyle,
          ),
          LoginTemplateInlineButton(
            text: privacyPolicyButtonText,
            style: style,
            onPressed: onPressedPrivacyPolicy,
          ),
        ],
      ),
    );
  }
}
