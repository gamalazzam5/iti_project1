import 'package:flutter/material.dart';

class OrderModel {
  final String orderId;
  final String status;
  final Color statusColor;
  final String date;
  final double price;

  const OrderModel({
    required this.orderId,
    required this.status,
    required this.statusColor,
    required this.date,
    required this.price,
  });
}
