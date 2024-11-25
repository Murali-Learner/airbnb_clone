import 'package:airbnb_clone/ui/screens/auth/widgets/appbar_widget.dart';
import 'package:airbnb_clone/ui/screens/auth/widgets/auth_widgets.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarWidget(
              title: "Login or Signup",
            ),
            AuthWidgets(),
          ],
        ),
      ),
    );
  }
}
