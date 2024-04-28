import 'package:flutter/material.dart';
import 'package:messageme/Screens/signin_screen.dart';
import 'Screens/chat_screen.dart';
import 'Screens/registration_screen.dart';
import 'Screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MesaageMe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.screenRouts
          : WelcomeScreen.screenRouts,
      routes: {
        WelcomeScreen.screenRouts: (context) => WelcomeScreen(),
        SignInScreen.screenRouts: (context) => SignInScreen(),
        RegestrationScreen.screenRouts: (context) => RegestrationScreen(),
        ChatScreen.screenRouts: (context) => ChatScreen(),
      },
    );
  }
}
