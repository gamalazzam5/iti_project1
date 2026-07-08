import 'package:flutter/material.dart';
import 'package:iti_project/features/home/views/cart_view.dart';
import 'package:iti_project/features/home/widgets/category_item.dart';
import 'package:iti_project/features/home/widgets/custom_text_form_field.dart';

import '../models/category_model.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});
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
    ),CategoryModel(
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
    ),CategoryModel(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartView()));
        }, icon: Icon(Icons.shopping_cart,color:Color(0xFFFF5E00) ,))],
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,color: Color(0xFFFF5E00),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Categories',style: TextStyle(color: Color(0xFFFF5E00),fontSize: 24,fontWeight: .w700),),
      ),
      body: Padding(
        padding: .symmetric(horizontal: 16),
        child: Column(
          children:[
            SizedBox(height: 20,),
        CustomTextFormField(hintText: 'Search', filledColor: Color(0xFFF3F3F3), prefixIcon: Icons.search),
            Expanded(
              child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) => CategoryItem(categoryModel: categories[index]),
                      ),
            ),
        ],),
      )
    );
  }
}
