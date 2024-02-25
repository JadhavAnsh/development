// ignore: file_names
import 'package:flutter/material.dart';
import 'package:to_do_app/add_task.dart';
import 'package:to_do_app/task_list.dart';
import 'constant/app_colors.dart';
import 'constant/app_images.dart';
import 'constant/app_string.dart';
import 'constant/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToTaskListScreen();
  }

  void navigateToTaskListScreen() async {
    await Future.delayed(const Duration(seconds: 6));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const AddTask(),
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
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(AppImages.appLogo),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              AppString.appName,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: AppThemes.fontFamily,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
