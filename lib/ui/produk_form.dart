import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hello_world_app/ui/produk_detail.dart';
import 'produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Produk"),
        backgroundColor: Colors.lightGreen.shade700,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          _textBoxKodeProduk(),
          _textBoxNamaProduk(),
          _textBoxHargaProduk(),
          _saveButton(),
        ],
      )),
    );
  }

  TextField _textBoxKodeProduk() {
    return TextField(
      decoration: InputDecoration(
          labelText: "Kode Produk", border: OutlineInputBorder()),
      controller: _kodeProdukController,
    );
  }

  TextField _textBoxNamaProduk() {
    return TextField(
      decoration: InputDecoration(
          labelText: "Nama Produk", border: OutlineInputBorder()),
      controller: _namaProdukController,
    );
  }

  TextField _textBoxHargaProduk() {
    return TextField(
      decoration: InputDecoration(
          labelText: "Harga Produk", border: OutlineInputBorder()),
      controller: _hargaProdukController,
      cursorColor: Colors.lightGreen.shade700,
    );
  }

  ElevatedButton _saveButton() {
    return ElevatedButton(
        onPressed: () {
          String kode_produk = _kodeProdukController.text;
          String nama_produk = _namaProdukController.text;
          int harga = int.parse(_hargaProdukController.text);

          Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => ProdukDetail(
                    kodeProduk: kode_produk,
                    namaProduk: nama_produk,
                    harga: harga,
                  )));
        },
        child: Text("Simpan"));
  }
}
