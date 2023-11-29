import 'package:firbase_app/app/splash_screen/splash_screen.dart';
import 'package:firbase_app/firebase_options.dart';
import 'package:firbase_app/models/user_auth/presentation/pages/home_page.dart';
import 'package:firbase_app/models/user_auth/presentation/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'models/user_auth/presentation/pages/sign_up_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        authDomain: "firbase-app1.firebaseapp.com",
        storageBucket: "firbase-app1.appspot.com",
        apiKey: "AIzaSyDz0GDL3KLONb4FBA-dba5WFTad2XRbulA",
        appId: "1:794872075735:web:394d59c6f0457d17baa792",
        messagingSenderId: "794872075735",
        projectId: "firbase-app1",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (context) => SplashScreen(
            child: LoginPage(),
          ),
      '/login': (context) => LoginPage(),
      '/signUp': (context) => SignUpPage(),
      '/home': (context) => HomePage(),
    });
  }
}
