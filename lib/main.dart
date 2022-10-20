import 'package:flutter/material.dart';
import 'ui/produk_form.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Aplikasi Flutter Pertama", home: ProdukForm());
  }
}
