import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Pengguna'),
      ),
      body : const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/LogoJejakKuliner.png'),
              ),
              SizedBox(height: 16),
              Text(
                'Nama Pengguna',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Tanggal Lahir: 01 Agustus 2004, Surabaya',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Lokasi : Bandar Lampung',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              Divider(),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('gilbert@gmail.com'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Nomor Telpon'),
                subtitle: Text('08783234567'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Makanan Favorit'),
                subtitle: Text('Rendang, Nasi Goreng, Pizza'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Alamat'),
                subtitle: Text('Jl. Kelelawar No.50, Bandar Lampung'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text('Kota Asal'),
                subtitle: Text('Bandung'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
