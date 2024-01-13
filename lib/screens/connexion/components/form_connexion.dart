import 'package:flutter/material.dart';

import '../../../constante.dart';

class FormConnexion extends StatefulWidget {
  const FormConnexion({super.key});

  @override
  State<FormConnexion> createState() => _FormConnexion();
}

class _FormConnexion extends State<FormConnexion> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController email = TextEditingController();
    TextEditingController psd = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            formEmail(email),
            const SizedBox(height: 18),
            formPassword(psd),
            const SizedBox(height: 28),
            GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  //go to acceuill
                  debugPrint("Hello word");
                }
              },
              child: Container(
                width: size.width * 0.9,
                height: size.height * 0.08,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.white,
                  // ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Sign In",
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container formEmail(TextEditingController email) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        controller: email,
        onTap: () {
          setState(() {
            col = Colors.white30;
          });
        },
        cursorColor: Colors.white,
        decoration: const InputDecoration(
          //  hintText: "Email or phone number",
          labelText: "Email or phone number",
          labelStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.only(left: 18, top: 10, bottom: 28),
        ),
      ),
    );
  }

  Container formPassword(TextEditingController psd) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        obscureText: true,
        controller: psd,
        onTap: () {
          setState(() {
            col = Colors.white30;
          });
        },
        cursorColor: Colors.white,
        decoration: const InputDecoration(
          //  hintText: "Email or phone number",
          labelText: "Password",
          labelStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.only(left: 18, top: 10, bottom: 28),
        ),
      ),
    );
  }
}
//le temps que tout charge!