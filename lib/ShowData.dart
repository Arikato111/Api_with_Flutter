import 'package:flutter/material.dart';
import 'Colors.dart';

Container showData(String menu) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: ColorColletion().background,
        borderRadius: BorderRadius.circular(10)),
    height: 100,
    child: Text(
      menu,
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: ColorColletion().text),
    ),
  );
}
