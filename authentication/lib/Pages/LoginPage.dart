import 'package:authentication/Services/AuthService.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("firebase auth"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: "Email"),
            controller: _emailController,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Senha"),
            controller: _passwordController,
          ),
          RaisedButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                    email: _emailController.text.trim(),
                    password: _passwordController.text.trim(),
                  );
            },
            child: Text("Logar"),
          ),
        ],
      ),
    );
  }
}
