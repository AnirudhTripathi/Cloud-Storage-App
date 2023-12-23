import 'package:drive/authentication%20screen/login_screen.dart';
import 'package:drive/controllers/authentication_controller.dart';
import 'package:drive/screens/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cloud Storage Drive',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: Colors.deepPurple,
        colorSchemeSeed: Colors.lightBlueAccent,
        useMaterial3: true,
      ),
      home: Root(),
    );
  }
}

class Root extends StatelessWidget {
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return authController.user.value == null ? LoginScreen() : Navbar();
    });
  }
}
