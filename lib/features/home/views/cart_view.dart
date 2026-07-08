import 'package:flutter/material.dart';

import '../models/cart_model.dart';
import '../widgets/cart_item.dart';
import '../widgets/checkout_btn.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final List<CartModel> items = [
    const CartModel(
      image: "assets/images/apple.png",
      title: "Red Apple",
      price: 4.99,
      unit: "kg",
    ),
    const CartModel(
      image: "assets/images/banana.png",
      title: "Original Banana",
      price: 5.99,
      unit: "kg",
    ),
    const CartModel(
      image: "assets/images/meat.png",
      title: "Meat",
      price: 24,
      unit: "st",
    ),
    const CartModel(
      image: "assets/images/vegetables.png",
      title: "Veg",
      price: 50,
      unit: "kg",
    ),
  ];

  final List<int> quantities = [1, 1, 1, 1];

  void increaseQuantity(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void decreaseQuantity(int index) {
    if (quantities[index] > 1) {
      setState(() {
        quantities[index]--;
      });
    }
  }

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
      quantities.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(
            color: Color(0xFFFF5E00),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: items.isEmpty
          ? const Center(
        child: Text(
          'Your cart is empty',
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CartItem(
            key: ValueKey('${items[index].title}-$index'),
            item: items[index],
            quantity: quantities[index],
            onAdd: () => increaseQuantity(index),
            onRemove: () => decreaseQuantity(index),
            onDelete: () => removeItem(index),
          );
        },
      ),
      bottomNavigationBar:
      items.isEmpty ? null : const CheckoutButton(),
    );
  }
}