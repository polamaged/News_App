import 'package:flutter/material.dart';
import 'package:news_app/Model/ArticleModel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articelmodel});
  final Articelmodel articelmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
         borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articelmodel.img??'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
            height:200,
          width: double.infinity,
          fit: BoxFit.cover,),),
         Text(articelmodel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          articelmodel.subtitle?? '',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )

      ],

    );
  }
}
