import 'package:flutter/material.dart';
import 'package:job_testsample/Provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'UI/user_login_sc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, child) {
          final provider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Test App',
            theme: provider.theme,
            home: const UserLoginScreen(),
          );
        });
  }
}
