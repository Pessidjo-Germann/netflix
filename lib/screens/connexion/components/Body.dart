import 'package:flutter/material.dart';
import 'package:netflix/constante.dart';
import 'package:netflix/screens/connexion/components/form_connexion.dart';

class Body extends StatelessWidget {
  const Body({super.key});
//ici c'est tout simplement la page de connexion!
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: FormConnexion(),
            ),
            const SizedBox(height: 28),
            textCustom("Need Help?"),
            const SizedBox(height: 28),
            textCustom("New to Netflix? Sign up now.", color: Colors.white),
            const SizedBox(height: 28),
            textCustom(
                "Sign in is protected by Google reCAPTCHA to ensure you're not a bot.Learn more.")
          ],
        ),
      ),
    );
  }
}
