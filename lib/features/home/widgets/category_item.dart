import 'package:flutter/material.dart';
import 'package:iti_project/features/home/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: categoryModel.color,
          radius: 65,
          child: SizedBox(
            height: 80,
            child: Image.asset(categoryModel.image),
          ),
        ),
        SizedBox(height: 16),
        Text(
          categoryModel.name,
          style: TextStyle(color: const Color(0xFF6D3805), fontSize: 15),
        ),
      ],
    );
  }
}
