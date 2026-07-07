import 'package:flutter/material.dart';
import 'package:iti_project/features/home/models/popular_details_model.dart';

class PopularDetailsItem extends StatelessWidget {
  const PopularDetailsItem({super.key, required this.model});
final PopularDetailsModel model ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:	185,
      width:	150,
      padding:EdgeInsets.symmetric(horizontal:	12,	vertical:	4)	,
      margin:	EdgeInsets.only(right:	12),
      decoration:BoxDecoration(
          color:	Colors.white,
          borderRadius:	BorderRadius.circular(20)
      )	,
      child:	Column(
        crossAxisAlignment:	CrossAxisAlignment.stretch,
        children:	[
          Expanded(
              child:
              Image.asset(model.image)),
          Text(
            model.title,
            style:	TextStyle(
              color:	Color(0xff7F4E1D),
              fontSize:	17,
              fontWeight:	FontWeight.w500,
            ),
          ),
          Text(
            model.subTitle,
            style:	TextStyle(
              color:	Color(0xff929292),
              fontSize:	13,
              fontWeight:	FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment:	MainAxisAlignment.spaceBetween,
            children:	[
              Text(
                model.price,
                style:	TextStyle(
                  color:	Color(0xffFF5E00),
                  fontSize:	22,
                  fontWeight:	FontWeight.w500,
                ),
              ),
              CircleAvatar(
                radius:	18,
                backgroundColor:	Color(0xff3AA14C),
                child:	Icon(
                  Icons.add,
                  color:	Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
