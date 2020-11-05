import 'package:authentication/Services/AuthService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logado"),
      ),
      body: Column(
        children: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              context.read<AuthenticationService>().SignOut();
            },
          ),
          Text("Sair"),
        ],
      ),
    );
  }
}
