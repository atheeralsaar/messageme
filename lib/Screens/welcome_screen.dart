import 'package:flutter/material.dart';
import 'package:messageme/Screens/registration_screen.dart';
import 'package:messageme/Screens/signin_screen.dart';
import '../Widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRouts = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  'MessageMe',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(
                      0xff2e366b,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.screenRouts);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegestrationScreen.screenRouts);
              },
            ),
          ],
        ),
      ),
    );
  }
}
