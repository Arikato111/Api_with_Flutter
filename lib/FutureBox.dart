import 'package:flutter/material.dart';
import 'ShowData.dart';

FutureBuilder futureBox(Future future) {
  return FutureBuilder(
      future: future,
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return showData(snapshot.data.toString());
        }
        return ListBody(
          children: [LinearProgressIndicator(), showData('Loading...')],
        );
      }));
}
