import 'package:flutter/material.dart';
import '../widgets/restaurant_card.dart';
import 'favorites_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> restaurants = [
      {
        'title' : 'Restoran Lezat',
        'subtitle' : 'Masakan Nusantara dan Asia',
        'imagePath' : 'assets/images/restaurant1.jpg',
      },
      {
        'title' : 'Cafe Santai',
        'subtitle' : 'Kopi dan Snack',
        'imagePath' : 'assets/images/restaurant2.jpg',
      },
      {
        'title' : 'Bakso Mantap',
        'subtitle' : 'Bakso dan Mie Ayam',
        'imagePath' : 'assets/images/restaurant3.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/LogoJejakKuliner.png',
              height: 40,
            ),
          const SizedBox(width: 8),
          const Text(
            'Jelajah Kuliner',
            style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite) ,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavoritesScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person) ,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
        return RestaurantCard(
          title: restaurants[index]['title']!,
          subtitle: restaurants[index]['subtitle']!,
          imagePath: restaurants[index]['imagePath']!,
        );
      },
    ), 
  );
}
}


