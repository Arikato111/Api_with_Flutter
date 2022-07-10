import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Container menuMoney(String menu, double price, Color colerText) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.yellow.shade200, borderRadius: BorderRadius.circular(10)),
    height: 100,
    child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(
        menu,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: colerText),
      ),
      Expanded(
        child: Text(
          NumberFormat("#,###.##").format(price),
          textAlign: TextAlign.right,
          style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 181, 125, 67)),
        ),
      ),
    ]),
  );
}
