import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_template/commons.dart';

class LoginTemplateSignInPage extends StatelessWidget {
  final LoginTemplateStyle style;
  final Function() onPressedSignIn;
  final Function() onPressedForgot;
  final Function() onPressedSignUp;
  final Widget logo;

  /// user textField
  final TextInputAction textInputActionUser;
  final TextInputType keyboardTypeUser;
  final String hintTextUser;
  final String? errorTextUser;
  final List<TextInputFormatter>? inputFormattersUser;
  final Function()? onTapUser;
  final TextEditingController? controllerUser;

  /// password textField
  final TextInputAction textInputActionPassword;
  final TextInputType keyboardTypePassword;
  final String hintTextPassword;
  final String? errorTextPassword;
  final List<TextInputFormatter>? inputFormattersPassword;
  final Function()? onTapPassword;
  final TextEditingController? controllerPassword;

  final String buttonTextSignIn;
  final String buttonTextForgotPassword;
  final String buttonTextSignUp;
  final List<LoginTemplateSocialButton>? socialButtons;
  final LoginTemplateTerm? term;

  const LoginTemplateSignInPage({
    Key? key,
    required this.logo,
    required this.onPressedSignIn,
    required this.onPressedForgot,
    required this.onPressedSignUp,
    required this.style,
    this.textInputActionUser: TextInputAction.next,
    this.keyboardTypeUser: TextInputType.emailAddress,
    this.hintTextUser: 'User name / Email / Phone number',
    this.errorTextUser,
    this.inputFormattersUser,
    this.onTapUser,
    this.controllerUser,
    this.textInputActionPassword: TextInputAction.done,
    this.keyboardTypePassword: TextInputType.visiblePassword,
    this.hintTextPassword: 'Password',
    this.errorTextPassword,
    this.inputFormattersPassword,
    this.onTapPassword,
    this.controllerPassword,
    this.buttonTextSignIn: 'Sign In',
    this.buttonTextForgotPassword: 'Forgot password?',
    this.buttonTextSignUp: 'Sign Up',
    this.socialButtons,
    this.term,
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
            child: LoginTemplateTextField(
              style: style,
              textInputAction: textInputActionPassword,
              keyboardType: keyboardTypePassword,
              hintText: hintTextPassword,
              controller: controllerPassword,
              onTap: onTapPassword,
              errorText: errorTextPassword,
              inputFormatters: inputFormattersPassword,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: style.verticalSpacingBetweenComponents),
            child: LoginTemplateButton(
              text: buttonTextSignIn,
              onPressed: onPressedSignIn,
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
                LoginTemplateInlineButton(
                  text: buttonTextForgotPassword,
                  onPressed: onPressedForgot,
                  style: style,
                ),
                Text(
                  ' | ',
                  style: style.messageTextStyle,
                ),
                LoginTemplateInlineButton(
                  text: buttonTextSignUp,
                  onPressed: onPressedSignUp,
                  style: style,
                ),
              ],
            ),
          ),
          if (socialButtons != null)
            Padding(
              padding: EdgeInsets.only(
                top: style.verticalSpacingBetweenGroup,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: socialButtons!
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                            bottom: style.verticalSpacingBetweenComponents,
                          ),
                          child: e,
                        ))
                    .toList(),
              ),
            ),
          if (term != null) term!,
        ],
      ),
    );
  }
}
