import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true, // Judul di tengah
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()), // Nomor urut
            ),
            title: Text('Product ${index + 1}'),
            subtitle: Text('Harga: \$${(index + 1) * 10}'), // Contoh harga
            trailing: Icon(Icons.delete), // Gambar recycle bin
          );
        },
      ),
    );
  }
}
