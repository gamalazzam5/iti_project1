import 'package:flutter/material.dart';

import '../models/cart_model.dart';
import '../widgets/cart_item.dart';
import '../widgets/checkout_btn.dart';

class CartView extends StatelessWidget {
   CartView({super.key});
  final List<CartModel> items = [
    CartModel(
      image: "assets/images/apple.png",
      title: "Red Apple",
      price: 4.99,
      unit: "kg",
      quantity: 2,
    ),
    CartModel(
      image: "assets/images/banana.png",
      title: "Original Banana",
      price: 5.99,
      unit: "kg",
      quantity: 2,
    ),
      CartModel(
      image: "assets/images/meat.png",
      title: "Meat",
      price: 24,
      unit: "st",
      quantity: 1,
    ),
    CartModel(
      image: "assets/images/vegetables.png",
      title: "Veg",
      price: 50,
      unit: "kg",
      quantity: 2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar( backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios,color: Color(0xFFFF5E00),),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text('Cart',style: TextStyle(color: Color(0xFFFF5E00),fontSize: 24,fontWeight: .w700),),
    ),
      body:ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (_, index) {
          return CartItem(item: items[index]);
        },
      ),

      bottomNavigationBar: const CheckoutButton(),
    );
  }
}
