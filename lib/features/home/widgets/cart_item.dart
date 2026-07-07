import 'package:flutter/material.dart';

import '../models/cart_model.dart';
import 'quantity_selector.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.item,
  });

  final CartModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [

          Image.asset(
            item.image,
            width: 70,
            height: 70,
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 12),

                QuantitySelector(
                  quantity: item.quantity,
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),

              Row(
                children:[ Text(
                  "\$${item.price}",
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.brown,
                  ),
                ),
                  SizedBox(width: 2,),
                  Text(item.unit),

                ]
              ),

            ],
          ),
        ],
      ),
    );
  }
}