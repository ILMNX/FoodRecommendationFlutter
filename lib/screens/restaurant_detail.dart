import 'package:flutter/material.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const RestaurantDetailsScreen({super.key, 
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

// Suggested code may be subject to a license. Learn more: ~LicenseLog:1068818384.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Deskripsi Restoran',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Ini adalah contoh deskripsi restoran',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Restoran telah ditambahkan ke Favorit'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: const Text('Tambahkan Ke Favorit'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
