import 'package:flutter/material.dart';
import 'package:news_app/Widgets/NewslistViewBuilder.dart';

class Catagoryview extends StatelessWidget {
  const Catagoryview({super.key, required this.catagory});
  final String catagory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(catagory, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [News_list_view_builder(catagory: catagory)],
      ),
    );
  }
}
