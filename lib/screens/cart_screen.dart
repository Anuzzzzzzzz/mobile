import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5'
  ];
  double _totalPrice = 50.00; // Replace with actual total price

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text(_items[index]),
            subtitle: Text(
              'Price: ${_formatPrice(10.00)}',
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                _deleteItem(index); // Call delete function
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total: ${_formatPrice(_totalPrice)}',
              style: const TextStyle(fontSize: 18.0),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement checkout functionality
              },
              child: const Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }

  void _deleteItem(int index) {
    setState(() {
      _items.removeAt(index);
      _totalPrice -= 10.00; // Adjust total price accordingly
    });
  }

  String _formatPrice(double price) {
    final nepaliFormat = NumberFormat.currency(locale: 'ne_NP', symbol: 'रू');
    return nepaliFormat.format(price);
  }
}
