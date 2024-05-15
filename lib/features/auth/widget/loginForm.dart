import 'package:ecommerceapp/features/Home/home.dart';
import 'package:ecommerceapp/features/auth/signup.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1, vertical: size.height * 0.05),
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email id';
                }
                if (value.contains("@gmail.com") == false) {
                  return 'Please enter a valid email id';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Email Id",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: size.width * 0.025,
                  color: Colors.grey,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                if (value.length < 8) {
                  return 'Password must be at least 8 characters long';
                }
                if (!value.contains(RegExp(r'[A-Z]'))) {
                  return 'Password must contain at least one uppercase letter';
                }
                if (!value.contains(RegExp(r'[0-9]'))) {
                  return 'Password must contain digit';
                }
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.password_outlined,
                  size: size.width * 0.025,
                  color: Colors.grey,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }
              },
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                  Size(size.width * 0.8, size.height * 0.06),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(1, 60, 110, 1),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              child: const Text(
                "Not registered? Sign up",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
