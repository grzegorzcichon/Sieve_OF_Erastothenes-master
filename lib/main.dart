import 'package:flutter/material.dart';

import 'models/sieve_of_eratosthenes_model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Sieve Of Eratosthenes',
    home: SieveOfEratosthenes(),
  ));
}
