import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_template/commons.dart';

class LoginTemplateCreatePasswordPage extends StatelessWidget {
  final LoginTemplateStyle style;
  final Widget logo;

  final String buttonTextNext;
  final Function() onPressedNext;

  /// password textField
  final TextInputAction textInputActionPassword;
  final TextInputType keyboardTypePassword;
  final String hintTextPassword;
  final String? errorTextPassword;
  final List<TextInputFormatter>? inputFormattersPassword;
  final Function()? onTapPassword;
  final TextEditingController? controllerPassword;
  final String textMessagePasswordRequirements;

  /// confirm password textField
  final TextInputAction textInputActionConfirmPassword;
  final TextInputType keyboardTypeConfirmPassword;
  final String hintTextConfirmPassword;
  final String? errorTextConfirmPassword;
  final List<TextInputFormatter>? inputFormattersConfirmPassword;
  final Function()? onTapConfirmPassword;
  final TextEditingController? controllerConfirmPassword;
  final String textMessageConfirmPassword;

  final String textMessage;

  const LoginTemplateCreatePasswordPage({
    Key? key,
    required this.logo,
    required this.style,
    this.textInputActionPassword: TextInputAction.next,
    this.keyboardTypePassword: TextInputType.visiblePassword,
    this.hintTextPassword: 'New password',
    this.errorTextPassword,
    this.inputFormattersPassword,
    this.onTapPassword,
    this.controllerPassword,
    this.textInputActionConfirmPassword: TextInputAction.done,
    this.keyboardTypeConfirmPassword: TextInputType.visiblePassword,
    this.hintTextConfirmPassword: 'Confirm password',
    this.errorTextConfirmPassword,
    this.inputFormattersConfirmPassword,
    this.onTapConfirmPassword,
    this.controllerConfirmPassword,
    this.textMessage:
        'Your new password must be different from previous used passwords.',
    this.buttonTextNext: 'Create password',
    required this.onPressedNext,
    this.textMessagePasswordRequirements: 'Must be at least 8 characters.',
    this.textMessageConfirmPassword: 'Both passwords must match.',
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
              textInputAction: textInputActionPassword,
              keyboardType: keyboardTypePassword,
              hintText: hintTextPassword,
              controller: controllerPassword,
              onTap: onTapPassword,
              errorText: errorTextPassword,
              inputFormatters: inputFormattersPassword,
              style: style,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: style.verticalSpacingBetweenSubComponents),
            child: Text(
              textMessagePasswordRequirements,
              style: style.messageTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenComponents,
            ),
            child: LoginTemplateTextField(
              textInputAction: textInputActionConfirmPassword,
              keyboardType: keyboardTypeConfirmPassword,
              hintText: hintTextConfirmPassword,
              controller: controllerConfirmPassword,
              onTap: onTapConfirmPassword,
              errorText: errorTextConfirmPassword,
              inputFormatters: inputFormattersConfirmPassword,
              style: style,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: style.verticalSpacingBetweenSubComponents),
            child: Text(
              textMessageConfirmPassword,
              style: style.messageTextStyle,
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
