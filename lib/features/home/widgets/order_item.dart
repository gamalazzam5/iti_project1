import 'package:flutter/material.dart';
import 'package:iti_project/core/utils/app_text_styles.dart';

import '../../../core/utils/app_colors.dart';
import '../models/order_model.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white)),
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: AppColors.tertiaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.shopping_basket_outlined,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  order.orderId,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryColor,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  order.status,
                  style: TextStyle(
                    color: order.statusColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 4),

                Text(order.date, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),

          Text(
            "\$${order.price.toStringAsFixed(0)}",
            style: AppTextStyles.k24TextButton.copyWith(
              color: AppColors.tertiaryColor,
              fontWeight: .bold,
            ),
          ),
        ],
      ),
    );
  }
}
