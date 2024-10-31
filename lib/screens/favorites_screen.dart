import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorit Saya'),
      ),
      body: const Center(
        child: Text('Daftar Makanan Favorit Akan Muncul Disini!'),
      ),
    );
  }
}
