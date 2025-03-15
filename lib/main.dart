import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card',
      theme: ThemeData.dark(),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Profile Card'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/395313713_2020448245005871_5289219614644934005_n.jpg',
                  ), // ใช้รูปที่อัปเดต
                ),
                const SizedBox(height: 10),
                const Text(
                  'Thanapat Nimjaroen',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Divider(
                  color: Colors.white54,
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                ),
                ListTile(
                  leading: const Icon(Icons.email, color: Colors.blueAccent),
                  title: const Text(
                    'Nimjaroen_t@silpakorn.edu',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.phone, color: Colors.greenAccent),
                  title: const Text(
                    '097-070-1036',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
