import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_template/commons.dart';

class LoginTemplateForgotPasswordPage extends StatelessWidget {
  final LoginTemplateStyle style;
  final String buttonTextNext;
  final Function() onPressedNext;
  final Widget logo;
  final String textMessage;

  /// user textField
  final TextInputAction textInputActionUser;
  final TextInputType keyboardTypeUser;
  final String hintTextUser;
  final String? errorTextUser;
  final List<TextInputFormatter>? inputFormattersUser;
  final Function()? onTapUser;
  final TextEditingController? controllerUser;

  const LoginTemplateForgotPasswordPage({
    Key? key,
    required this.logo,
    required this.style,
    this.buttonTextNext: 'Send',
    required this.onPressedNext,
    this.textInputActionUser: TextInputAction.next,
    this.keyboardTypeUser: TextInputType.emailAddress,
    this.hintTextUser: 'Email / Phone number',
    this.errorTextUser,
    this.inputFormattersUser,
    this.onTapUser,
    this.controllerUser,
    this.textMessage:
        'Enter the email or phone number associated with your account and we will send an introductions to reset your password.',
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
              textInputAction: textInputActionUser,
              keyboardType: keyboardTypeUser,
              hintText: hintTextUser,
              controller: controllerUser,
              onTap: onTapUser,
              errorText: errorTextUser,
              inputFormatters: inputFormattersUser,
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
        ],
      ),
    );
  }
}
