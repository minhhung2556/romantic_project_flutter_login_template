import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_template/commons.dart';

class LoginTemplateSignUpPage extends StatelessWidget {
  final LoginTemplateStyle style;
  final Function() onPressedSignUp;
  final Function() onPressedSignIn;
  final Widget logo;

  /// user textField
  final TextInputAction textInputActionUser;
  final TextInputType keyboardTypeUser;
  final String hintTextUser;
  final String? errorTextUser;
  final List<TextInputFormatter>? inputFormattersUser;
  final Function()? onTapUser;
  final TextEditingController? controllerUser;

  /// full name textField
  final TextInputAction textInputActionFullName;
  final TextInputType keyboardTypeFullName;
  final String hintTextFullName;
  final String? errorTextFullName;
  final List<TextInputFormatter>? inputFormattersFullName;
  final Function()? onTapFullName;
  final TextEditingController? controllerFullName;

  final String buttonTextSignIn;
  final String buttonTextSignUp;
  final LoginTemplateTerm? term;
  final String textMessageAlreadyHaveAccount;

  const LoginTemplateSignUpPage({
    Key? key,
    required this.logo,
    required this.onPressedSignIn,
    required this.onPressedSignUp,
    required this.style,
    this.textInputActionUser: TextInputAction.next,
    this.keyboardTypeUser: TextInputType.emailAddress,
    this.hintTextUser: 'User name / Email / Phone number',
    this.errorTextUser,
    this.inputFormattersUser,
    this.onTapUser,
    this.controllerUser,
    this.textInputActionFullName: TextInputAction.done,
    this.keyboardTypeFullName: TextInputType.name,
    this.hintTextFullName: 'Full name',
    this.errorTextFullName,
    this.inputFormattersFullName,
    this.onTapFullName,
    this.controllerFullName,
    this.buttonTextSignIn: 'Sign In',
    this.buttonTextSignUp: 'Create Account',
    this.term,
    this.textMessageAlreadyHaveAccount: 'Already have an account? ',
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
            child: LoginTemplateTextField(
              textInputAction: textInputActionFullName,
              keyboardType: keyboardTypeFullName,
              hintText: hintTextFullName,
              controller: controllerFullName,
              onTap: onTapFullName,
              errorText: errorTextFullName,
              inputFormatters: inputFormattersFullName,
              style: style,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: style.verticalSpacingBetweenComponents),
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
              text: buttonTextSignUp,
              onPressed: onPressedSignUp,
              style: style,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: style.verticalSpacingBetweenGroup,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textMessageAlreadyHaveAccount,
                  style: style.messageTextStyle,
                ),
                LoginTemplateInlineButton(
                  text: buttonTextSignIn,
                  onPressed: onPressedSignIn,
                  style: style,
                ),
              ],
            ),
          ),
          if (term != null) term!,
        ],
      ),
    );
  }
}
