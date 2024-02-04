import 'package:bookstory/presintation/ui/resources/images.dart';
import 'package:bookstory/presintation/ui/resources/styles.dart';
import 'package:bookstory/presintation/ui/screens/navigator/navigator.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future getNextPage() {
    return Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NavigatorScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    getNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
            Colors.blue,
            Colors.red,
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.bookLogo,
                  height: sizeHeight.height * 0.3,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(height: sizeHeight.height * 0.060),
            Text("Welcome to\nBookstory", textAlign: TextAlign.center, style: AppStyles.splashStyle()),
          ],
        ),
      ),
    );
  }
}
