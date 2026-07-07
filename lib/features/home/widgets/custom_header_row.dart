import 'package:flutter/material.dart';

class CustomHeaderRow extends StatelessWidget {
  const CustomHeaderRow({super.key, required this.leading, required this.trail, this.onTap});
final String leading, trail;
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          leading,
          style: TextStyle(
            color: const Color(0xFF6D3805),
            fontSize: 22,
            fontWeight: .w700,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            trail,
            style: TextStyle(color: const Color(0xFFFF5E00), fontSize: 18),
          ),
        ),
      ],
    );
  }
}
