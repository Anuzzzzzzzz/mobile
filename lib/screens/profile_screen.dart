import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'User Profile',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            const ListTile(
              title: Text('Name: Anuj Paudel'),
            ),
            const ListTile(
              title: Text('Email: anuj.paudel061@gmail.com'),
            ),
            const ListTile(
              title: Text('Phone: 9845354280'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement action for edit profile button
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
