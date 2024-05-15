import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Featured Products',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              _buildProductList(), // Function to build product listings
              const SizedBox(height: 20.0),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              _buildCategoryList(), // Function to build category list
              const SizedBox(height: 20.0),
              const Text(
                'Promotions',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              _buildBanner(), // Function to build promotional banners
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductList() {
    // TODO: Implement product listing widget
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of products
        itemBuilder: (context, index) {
          // TODO: Return product item widget
          return Container(
            width: 150.0,
            margin: const EdgeInsets.only(right: 10.0),
            color: Colors.grey[300],
            child: Center(
              child: Text('Product ${index + 1}'),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCategoryList() {
    // TODO: Implement category list widget
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Number of categories
        itemBuilder: (context, index) {
          // TODO: Return category item widget
          return Container(
            width: 120.0,
            margin: const EdgeInsets.only(right: 10.0),
            color: Colors.blue[100],
            child: Center(
              child: Text('Category ${index + 1}'),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBanner() {
    // TODO: Implement banner widget
    return Container(
      height: 150.0,
      color: Colors.orange[100],
      child: const Center(
        child: Text('Promotional Banner'),
      ),
    );
  }
}
