import 'package:erp_school/src/styles/app_color.dart';
import 'package:erp_school/src/styles/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSecure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColor.primaryLight, AppColor.primary]),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset("assets/images/splash.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Hi Student",
                        style: AppTextStyle.style(
                            fontSize: 34, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Sign in to Continue",
                        style: AppTextStyle.style(
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.4),
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(38),
                    topLeft: Radius.circular(38),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextFormField(
                      style: AppTextStyle.style(
                        color: Colors.black.withOpacity(0.8),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Hipporasy@gmail.com',
                        labelText: 'Mobile Number/Email',
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        labelStyle: AppTextStyle.style(
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      style: AppTextStyle.style(
                        color: Colors.black.withOpacity(0.8),
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(15),
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ),
                        labelText: 'Password',
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.8)),
                        ),
                        labelStyle: AppTextStyle.style(
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
