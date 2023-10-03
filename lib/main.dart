import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test5/checking.dart';
import 'package:test5/contact.dart';
import 'package:test5/saving1.dart';

import 'firebase_options.dart';
import 'welcome_screen.dart';
import 'home_screen.dart';
import 'signup_screen.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:
  DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => const WelcomeScreen(),
        'registration_screen': (context) => const RegistrationScreen(),
        'login_screen': (context) => const LoginScreen(),
        'home_screen': (context) =>   HomeScreen(checkingNow: 375),
        'checking_screen': (context) => const Checking(),
        'saving_screen' : (context) => const Saving(),
        'contact' : (context) => const Contact(),
        //'saving_transaction_screen' : (context) => const SavingsTransaction(),
      },
    );
  }
}

