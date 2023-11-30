import 'package:firbase_app/app/splash_screen/splash_screen.dart';
import 'package:firbase_app/models/user_auth/presentation/pages/home_page.dart';
import 'package:firbase_app/models/user_auth/presentation/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'models/user_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDlfeP2cb51ZfJ1Ah9jYc8HAsXu9W577S0",
          appId: "1:741599270770:web:7035337f01663d34336feb",
          messagingSenderId: "741599270770",
          projectId: "flutter-app-54e46"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Firebase',
        routes: {
          '/': (context) => SplashScreen(
                // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
                child: LoginPage(),
              ),
          '/login': (context) => LoginPage(),
          '/signUp': (context) => SignUpPage(),
          '/home': (context) => HomePage(),
        });
  }
}
