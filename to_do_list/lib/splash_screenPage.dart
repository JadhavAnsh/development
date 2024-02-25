import 'package:flutter/material.dart';
import 'package:to_do_list/constant/app_colors.dart';
import 'package:to_do_list/constant/app_images.dart';
import 'package:to_do_list/constant/app_string.dart';
import 'package:to_do_list/constant/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToTaskListScreen();
  }

  void navigateToTaskListScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => TaskListScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(AppImages.appLogo),
              ),
            ),
            SizedBox(height: 24),
            Text(
              AppString.appName,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: AppThemes.fontFamily,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 24),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
