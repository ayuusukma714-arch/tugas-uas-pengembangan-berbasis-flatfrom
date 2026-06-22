import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() =>
      _RegisterPageState();
}

class _RegisterPageState
    extends State<RegisterPage> {
  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  final AuthService auth =
      AuthService();

  Future<void> register() async {
    bool success =
        await auth.register(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    if (success) {
      ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content:
              Text('Register berhasil'),
        ),
      );

      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content:
              Text('Email sudah digunakan'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Register",
        ),
        backgroundColor:
            Colors.green,
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller:
                  emailController,
              style: const TextStyle(
                  color: Colors.white),
              decoration:
                  const InputDecoration(
                labelText: "Email",
                labelStyle:
                    TextStyle(
                  color:
                      Colors.white,
                ),
              ),
            ),

            const SizedBox(
                height: 15),

            TextField(
              controller:
                  passwordController,
              obscureText: true,
              style: const TextStyle(
                  color: Colors.white),
              decoration:
                  const InputDecoration(
                labelText:
                    "Password",
                labelStyle:
                    TextStyle(
                  color:
                      Colors.white,
                ),
              ),
            ),

            const SizedBox(
                height: 30),

            SizedBox(
              width:
                  double.infinity,
              child: ElevatedButton(
                onPressed:
                    register,
                child: const Text(
                    "REGISTER"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}