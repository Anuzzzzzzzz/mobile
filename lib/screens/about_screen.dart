import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Us',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec maximus nulla, sit amet efficitur leo. Sed sit amet facilisis nisi. Nulla ac viverra est. Integer eu elit eget ex efficitur sodales. Duis ac posuere nisi. Phasellus nec risus a dolor lobortis elementum non eget felis. Suspendisse potenti. Mauris euismod ut magna nec dignissim.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: info@example.com\nPhone: +123 456 7890',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
