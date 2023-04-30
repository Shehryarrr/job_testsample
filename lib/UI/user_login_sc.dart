// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:job_testsample/Provider/theme_provider.dart';

import 'package:job_testsample/Widgets/Resuseable_button.dart';
import 'package:job_testsample/Widgets/Reuseable_widget.dart';
import 'package:provider/provider.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      provider.toggleTheme();
                    },
                    child: const Icon(Icons.mode_night_outlined)),
              ],
            ),
            Center(
                child: CircleAvatar(
              backgroundColor: Colors.yellow,
              radius: 40,
              child: Center(
                child: Center(
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.brown[500],
                    backgroundImage: const AssetImage(
                      'Assets/user.png',
                    ),
                  ),
                ),
              ),
            )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'John Dee',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'john.dee@example.com',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            ReuseAbleButton(
                title: 'Upgrade to Pro',
                onTap: () {},
                width: MediaQuery.of(context).size.width * .6,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                color: Colors.orange),
            const SizedBox(
              height: 10,
            ),
            ListTile_Widget(
                title:
                    const Text('Privacy', style: TextStyle(color: Colors.red)),
                leading: const Icon(Icons.shield_outlined),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {}),
            const SizedBox(
              height: 10,
            ),
            ListTile_Widget(
                title: const Text(
                  "Purchase History",
                  style: TextStyle(color: Colors.red),
                ),
                leading: const Icon(Icons.timer),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {}),
            const SizedBox(
              height: 10,
            ),
            ListTile_Widget(
                title: const Text('Help & Support',
                    style: TextStyle(color: Colors.red)),
                leading: const Icon(Icons.question_mark_rounded),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {}),
            const SizedBox(
              height: 10,
            ),
            ListTile_Widget(
                title:
                    const Text("Setting", style: TextStyle(color: Colors.red)),
                leading: const Icon(Icons.settings),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {}),
            const SizedBox(
              height: 10,
            ),
            ReuseAbleButton(
                title: "Login",
                onTap: () {},
                width: MediaQuery.of(context).size.width * .8,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                color: Colors.black45)
          ],
        ),
      ),
    );
  }
}
