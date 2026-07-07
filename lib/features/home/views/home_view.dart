import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iti_project/features/home/models/category_model.dart';
import 'package:iti_project/features/home/models/popular_details_model.dart';
import 'package:iti_project/features/home/widgets/category_item.dart';
import 'package:iti_project/features/home/widgets/custom_header_row.dart';
import 'package:iti_project/features/home/widgets/popular_details_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const List<CategoryModel> categories = [
    CategoryModel(
      image: 'assets/images/grapes.png',
      name: 'Fruits',
      color: Color(0xFFEDD0FF),
    ),
    CategoryModel(
      image: 'assets/images/vegetables.png',
      name: 'Vegetables',
      color: Color(0xFFFFD9BA),
    ),
    CategoryModel(
      image: 'assets/images/meat.png',
      name: 'Meat',
      color: Color(0xFFFACCCC),
    ),
    CategoryModel(
      image: 'assets/images/fish.png',
      name: 'Fish',
      color: Color(0xFFFACCCC),
    ),
  ];

  static const List<PopularDetailsModel> popularList = [
    PopularDetailsModel(
      title: 'Apple',
      subTitle: '1kg,price',
      price: r'$ 4,99',
      image: 'assets/images/apple.png',
    ),
    PopularDetailsModel(
      title: 'Banana',
      subTitle: '12kg,price',
      price: r'$ 5,99',
      image: 'assets/images/banana.png',
    ),

    PopularDetailsModel(
      title: 'Fish',
      subTitle: '1kg,price',
      price: r'$ 3,99',
      image: 'assets/images/fish.png',
    ),
    PopularDetailsModel(
      title: 'Meat',
      subTitle: '1kg,price',
      price: r'$ 7,99',
      image: 'assets/images/fish.png',
    ),
    PopularDetailsModel(
      title: 'Fish',
      subTitle: '12kg,price',
      price: r'$ 5,99',
      image: 'assets/images/banana.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/home_image.png'),
          SizedBox(height: 24),
          CustomHeaderRow(leading: 'Categories', trail: 'See All'),
          SizedBox(height: 24),

          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: .only(right: 11),
                  child: CategoryItem(categoryModel: categories[index]),
                );
              },
            ),
          ),

          CustomHeaderRow(leading: 'Popular deals', trail: 'See all'),
          SizedBox(height: 32),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularList.length,
              itemBuilder: (context, index) {
                return PopularDetailsItem(
                  model: popularList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
