import 'package:flutter/material.dart';
import 'package:pinterest_clone/constants/AppColors.dart';
import 'package:pinterest_clone/constants/custom_button2.dart';
import 'package:pinterest_clone/screens/home_screen.dart';
import 'package:pinterest_clone/screens/signup_screen.dart';
import 'package:pinterest_clone/utils/Navigators.dart';
import 'package:pinterest_clone/widgets/login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Login(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                          child: Image.asset(
                        'assets/images/Pinterest 1.png',
                        alignment: Alignment.center,
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Welcome to Pinterest',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.color6,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Worksans',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .7,
                        child: TextFormField(
                          cursorColor: AppColors.color2,
                          style: TextStyle(color: AppColors.color4),
                          decoration: InputDecoration(
                              fillColor: AppColors.color7.withOpacity(0.4),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                              hintText: 'Email address',
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Worksans',
                                fontSize: 20,
                              )),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .7,
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: TextFormField(
                          cursorColor: AppColors.color2,
                          style: TextStyle(color: AppColors.color4),
                          decoration: InputDecoration(
                              fillColor: AppColors.color7.withOpacity(0.4),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                              hintText: 'Password',
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Worksans',
                                fontSize: 20,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButtton2(
                          onPressed: () {},
                          color: AppColors.color5,
                          text: 'Continue with Facebook',
                          textColor: AppColors.color8,
                          width: MediaQuery.of(context).size.width * .7,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButtton2(
                          onPressed: () {},
                          color: AppColors.color7,
                          text: 'Continue with Google',
                          textColor: AppColors.color6,
                          width: MediaQuery.of(context).size.width * .7,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButtton2(
                          onPressed: () {
                            navigatePush(context, HomeScreen());
                          },
                          color: AppColors.color2,
                          text: 'Login',
                          textColor: AppColors.color8,
                          width: MediaQuery.of(context).size.width * .7,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'By continuing you agree to Pinterest\'s\nTerms Of Service and acknowledge you\'ve\n read our Privacy Policy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Worksans',
                                  fontWeight: FontWeight.w400),
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Not on pinterest yet?',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Worksans',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: GestureDetector(
                                      onTap: () =>
                                          navigatePush(context, SignupScreen()),
                                      child: Text(
                                        'Sign up',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: AppColors.color5,
                                            fontFamily: 'Worksans',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //  Spacer(flex: 2,),
          ],
        ));
  }
}
