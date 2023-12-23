import 'package:drive/controllers/authentication_controller.dart';
import 'package:drive/utils.dart';
import 'package:flutter/material.dart';
import 'package:drive/main.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

String googleIconPath = 'assets/google_icon.svg';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).viewInsets.top + 30),
            child: const Image(
              width: 250,
              height: 250,
              image: AssetImage('assets/cloud_storage.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              margin: const EdgeInsets.only(right: 25, bottom: 25, left: 25),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Colors.grey.shade700.withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 10)
                  ] // BoxShadow
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Welcome to BitBreeze',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Embrace the Breeze for Cloud-Driven Serenity',
                      style: textStyle(
                        17,
                        textColor,
                        FontWeight.w800,
                      ),
                    ),
                  ),
                  Lottie.asset('assets/login_illustration.json',
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width / 1.4,
                      fit: BoxFit.fill),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: FilledButton.icon(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        fixedSize:
                            Size(MediaQuery.of(context).size.width / 1.3, 45),
                      ),
                      label: Text('Login with Email',
                          style: textStyle(20, Colors.white, FontWeight.w600)),
                      icon: const Icon(
                        Icons.mail,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 5),
                    child: ElevatedButton.icon(
                        onPressed: () => Get.find<AuthController>().login(),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                                MediaQuery.of(context).size.width / 1.3, 45),
                            backgroundColor: Colors.black),
                        label: Text('Login with Google',
                            style:
                                textStyle(20, Colors.white, FontWeight.w600)),
                        icon: SvgPicture.asset(googleIconPath,
                            width: 25.0, height: 25.0)),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
