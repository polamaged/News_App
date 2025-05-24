import 'package:flutter/material.dart';
import 'package:news_app/Model/ArticleModel.dart';
import 'package:news_app/Widgets/News_tile.dart';
import 'package:news_app/Views/WebView.dart';

class News_List_view extends StatelessWidget {
  const News_List_view({super.key, required this.articles});
  final List<Articelmodel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return NewsWebView(url: articles[index].url);
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(articelmodel: articles[index]),
          ),
        );
      }, childCount: articles.length),
    );
  }
}
