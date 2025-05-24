import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Catagorius_List_view.dart';
import 'package:news_app/Widgets/NewslistViewBuilder.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: catagoriusListView()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            News_list_view_builder(catagory: 'top'),
          ],
        ),
      ),
    );
  }
}
