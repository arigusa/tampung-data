import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  //required artinya paramter wajib diisi saat dipanggil di halaman lain
  DetailPage({required this.name, required this.alamat});

  String name;
  String alamat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            initialValue: alamat,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
                labelText: 'alamat', hintText: 'Ketik alamat lengkap anda'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Alamat tidak boleh kosong';
              }
              return null;
            },
          ),
          //menampilkan nama

          //menampilkan alamat
          Text(alamat)
        ],
      )),
    );
  }
}
