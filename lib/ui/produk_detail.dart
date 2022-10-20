import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  ProdukDetail({this.kodeProduk, this.namaProduk, this.harga});

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Produk Detail"),
          backgroundColor: Colors.red.shade400,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Kode Produk : ${widget.kodeProduk}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red.shade800,
                      backgroundColor: Colors.black)),
              Text("Nama Produk : ${widget.namaProduk}",
                  style: TextStyle(fontSize: 30)),
              Text("Harga : ${widget.harga}", style: TextStyle(fontSize: 30)),
            ],
          ),
        ));
  }
}
