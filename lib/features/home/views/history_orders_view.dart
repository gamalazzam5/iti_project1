import 'package:flutter/material.dart';

import '../models/order_model.dart';
import '../widgets/order_item.dart';

class HistoryOrdersView extends StatelessWidget {
  const HistoryOrdersView({super.key});

  static const List<OrderModel> orders = [
    OrderModel(
      orderId: 'Order #345',
      status: 'Delivered',
      statusColor: Colors.green,
      date: 'October 26, 2014',
      price: 700,
    ),
    OrderModel(
      orderId: 'Order #346',
      status: 'Cancelled',
      statusColor: Colors.red,
      date: 'October 14, 2016',
      price: 452,
    ),
    OrderModel(
      orderId: 'Order #347',
      status: 'Delivered',
      statusColor: Colors.green,
      date: 'July 26, 2017',
      price: 281,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (_, index) {
        return OrderItem(order: orders[index]);
      },
    );
  }
}
