
import 'package:flutter/material.dart';
import 'package:news_app/Model/catagorymodel.dart';
import 'package:news_app/Widgets/Catagory_card.dart';

class catagoriusListView extends StatelessWidget {
  const catagoriusListView({
    super.key,
  });
  final List<Catagory_model>catagories =const [
    Catagory_model(catagoryname: 'Business', imageasset: 'assets/business.avif'),
    Catagory_model(catagoryname: 'Entertainment', imageasset: 'assets/entertaiment.avif'),
    Catagory_model(catagoryname: 'Health', imageasset: 'assets/general.avif'),
    Catagory_model(catagoryname: 'Science', imageasset: 'assets/science.avif'),
    Catagory_model(catagoryname: 'Sports', imageasset: 'assets/sports.avif'),
    Catagory_model(catagoryname: 'Technology', imageasset: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagories.length,
        itemBuilder: (context, index) {
          return CatagoryCard(catagory: catagories[index],);
        },),
    );
  }
}
