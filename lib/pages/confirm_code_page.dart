import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_template/commons.dart';

class LoginTemplateConfirmCodePage extends StatelessWidget {
  final LoginTemplateStyle style;
  final Widget logo;
  final String textMessage;

  final String buttonTextNext;
  final Function() onPressedNext;

  final String textMessageResend;
  final String buttonTextResend;
  final Function() onPressedResend;

  /// code textField
  final TextInputAction textInputActionCode;
  final TextInputType keyboardTypeCode;
  final String hintTextCode;
  final String? errorTextCode;
  final List<TextInputFormatter>? inputFormattersCode;
  final Function()? onTapCode;
  final TextEditingController? controllerCode;

  const LoginTemplateConfirmCodePage({
    Key? key,
    required this.logo,
    required this.style,
    this.textMessage: 'Enter the 6 digit code sent to you at ******.',
    this.buttonTextNext: 'Confirm',
    required this.onPressedNext,
    this.textInputActionCode: TextInputAction.done,
    this.keyboardTypeCode: TextInputType.number,
    this.hintTextCode: 'Code',
    this.errorTextCode,
    this.inputFormattersCode,
    this.onTapCode,
    this.controllerCode,
    this.buttonTextResend: 'Resend',
    required this.onPressedResend,
    this.textMessageResend: 'Not received, even at Spam folder?',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: style.screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenGroup,
            ),
            child: Center(
              child: logo,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.screenPadding.top + style.verticalSpacingBetweenGroup,
            ),
            child: Text(
              textMessage,
              style: style.messageTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenGroup,
            ),
            child: LoginTemplateTextField(
              style: style,
              textInputAction: textInputActionCode,
              keyboardType: keyboardTypeCode,
              hintText: hintTextCode,
              controller: controllerCode,
              onTap: onTapCode,
              errorText: errorTextCode,
              inputFormatters: inputFormattersCode,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: style.verticalSpacingBetweenComponents),
            child: LoginTemplateButton(
              text: buttonTextNext,
              onPressed: onPressedNext,
              style: style,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenGroup,
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                Text(
                  textMessageResend,
                  style: style.messageTextStyle,
                ),
                LoginTemplateInlineButton(
                  text: buttonTextResend,
                  onPressed: onPressedResend,
                  style: style,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
