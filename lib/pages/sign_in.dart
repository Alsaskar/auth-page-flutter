import 'package:flutter/material.dart';
import 'package:sign_in_app/pages/sign_up.dart';
import 'package:sign_in_app/theme.dart';
import 'package:sign_in_app/widgets/text_button.dart';
import 'package:sign_in_app/widgets/field.dart';
import 'package:sign_in_app/pages/forgot_pass.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/img_login.png',
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CustomField(
            iconUrl: 'assets/icon_email.png',
            hint: 'Email',
          ),
          CustomField(
            iconUrl: 'assets/icon_password.png',
            hint: 'Password',
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassPage()),
                  );
                },
                child: Text(
                  "Lupa Password?",
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ),
          CustomTextButton(
            title: 'Login',
            margin: EdgeInsets.only(top: 50),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 30,
              bottom: 74,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    "Belum punya akun? Daftar",
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
