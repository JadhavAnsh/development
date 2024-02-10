import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(icon: Icon(Icons.chevron_right_outlined)),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Join Us Now!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail),
                label: const Text(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    'Enter your email'),
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                label: const Text(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    'Enter your password'),
                prefixIcon: const Icon(Icons.key),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Register'),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {},
                child: const Text('Social Signup',
                    style: TextStyle(fontSize: 20, color: Colors.white))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _AppIcons(Icons.facebook),
                _AppIcons(Icons.photo_library),
                _AppIcons(Icons.account_circle_outlined),
              ],
            ),
            const SizedBox(height: 60),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Already a member? Signin',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _AppIcons(IconData icon) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(8),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 40,
        ),
        color: Colors.white,
      ),
    );
  }
}
