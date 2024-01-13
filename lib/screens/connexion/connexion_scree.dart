import 'package:flutter/material.dart';

import 'components/Body.dart';

class ConnexionScreen extends StatelessWidget {
  static String routeName = '/connexion';

  const ConnexionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NETFLIX"),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: const Body(),
    );
  }
}
