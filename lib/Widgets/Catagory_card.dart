

import 'package:flutter/material.dart';
import 'package:news_app/Model/catagorymodel.dart';
import 'package:news_app/Views/CatagoryView.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({super.key , required this.catagory});
  final Catagory_model catagory ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Catagoryview(catagory: catagory.catagoryname,);
        },
        ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 120,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(catagory.imageasset),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(child: Text(catagory.catagoryname, style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold , fontSize: 18),)),
        ),
      ),
    );
  }
}
