import 'package:flutter/material.dart';

import '../models/order_model.dart';
import '../widgets/order_item.dart';

class OngoingOrdersView extends StatelessWidget {
  const OngoingOrdersView({super.key});

  static const List<OrderModel> orders = [
    OrderModel(
      orderId: 'Order #400',
      status: 'Preparing',
      statusColor: Colors.orange,
      date: 'Today',
      price: 320,
    ),
    OrderModel(
      orderId: 'Order #401',
      status: 'On The Way',
      statusColor: Colors.blue,
      date: 'Today',
      price: 190,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (_, index) {
        return OrderItem(
          order: orders[index],
        );
      },
    );
  }
}