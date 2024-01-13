import 'package:flutter/material.dart';

Color col = Colors.white24;
Text textCustom(String name,
    {double scale = 1.1, Color color = Colors.white60}) {
  return Text(
    name,
    textScaleFactor: scale,
    style: TextStyle(color: color),
    textAlign: TextAlign.center,
  );
}
