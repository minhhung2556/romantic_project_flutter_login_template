import 'package:flutter/material.dart';
import 'package:flutter_login_template/flutter_login_template.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late LoginTemplateStyle style;

  @override
  void initState() {
    style = LoginTemplateStyle.resolve(null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var logo = Icon(
      Icons.android_rounded,
      size: 80,
    );

    var signInPage = LoginTemplateSignInPage(
      logo: logo,
      style: style,
      onPressedSignIn: () {
        //TODO
      },
      onPressedSignUp: () {
        //TODO
      },
      onPressedForgot: () {
        //TODO
      },
      socialButtons: [
        LoginTemplateSocialButton(
          text: 'Apple',
          onPressed: () {
            //TODO
          },
          icon: Icon(
            Icons.account_circle_sharp,
            size: 16,
            color: style.socialButtonTextStyle.color,
          ),
          style: style,
        ),
        LoginTemplateSocialButton(
          text: 'Google',
          onPressed: () {
            //TODO
          },
          icon: Icon(
            Icons.android,
            size: 16,
            color: style.socialButtonTextStyle.color,
          ),
          style: style,
        )
      ],
      term: LoginTemplateTerm(
        style: style,
        onPressedTermOfService: () {
          //TODO
        },
        onPressedPrivacyPolicy: () {
          //TODO
        },
      ),
    );

    var signUpPage = LoginTemplateSignUpPage(
      logo: logo,
      style: style,
      onPressedSignIn: () {
        //TODO
      },
      onPressedSignUp: () {
        //TODO
      },
      term: LoginTemplateTerm(
        style: style,
        onPressedTermOfService: () {
          //TODO
        },
        onPressedPrivacyPolicy: () {
          //TODO
        },
      ),
    );

    var forgotPasswordPage = LoginTemplateForgotPasswordPage(
        logo: logo,
        style: style,
        onPressedNext: () {
          //TODO
        });

    var confirmCodePage = LoginTemplateConfirmCodePage(
      logo: logo,
      style: style,
      onPressedNext: () {},
      onPressedResend: () {},
    );

    var createPassword = LoginTemplateCreatePasswordPage(
      logo: logo,
      style: style,
      errorTextPassword:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
      onPressedNext: () {},
    );

    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orangeAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Login Template'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              signInPage,
              signUpPage,
              forgotPasswordPage,
              confirmCodePage,
              createPassword,
            ],
          ),
        ),
      ),
    );
  }
}
