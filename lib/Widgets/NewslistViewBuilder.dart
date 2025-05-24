
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Model/ArticleModel.dart';
import 'package:news_app/Services/News_service.dart';
import 'package:news_app/Widgets/News_list_view.dart';

class News_list_view_builder extends StatefulWidget {
  const News_list_view_builder({
    super.key, required this.catagory,
  });
final String catagory;
  @override
  State<News_list_view_builder> createState() => _News_list_view_builderState();
}

class _News_list_view_builderState extends State<News_list_view_builder> {
  @override
@override
  var future;
  void initState() {
    super.initState();
    future = NewsService(Dio()).get_generalNews(catagory:widget.catagory);
  }
  // void initState() {
  //   super.initState();
  //   GetGeneralNews();
  // }
  //
  // Future<void> GetGeneralNews() async {
  //   articles = await NewsService(Dio()).get_generalNews();
  //   Isloading=false;
  //   setState(() {
  //   });
  // }

  Widget build(BuildContext context) {
    return FutureBuilder<List<Articelmodel>>(
        future: future ,
        builder:(context, snapshot) {
          if(snapshot.hasData)
          {
            return News_List_view(
                articles: snapshot.data!
            );
          }
          else if(snapshot.hasError)
          {
             return const SliverFillRemaining
                (child:
                  Center(child:
                  Text('oops there was an error , try again later',
                    style: TextStyle(fontSize: 20)
                    ,)),);
          }
          else
          {
             return const SliverFillRemaining(child:
             Center(child:
             CircularProgressIndicator()
             ),
             );
          }

        },
    );

      // Isloading ? SliverFillRemaining(
      //   child: Center(child: CircularProgressIndicator()))
      //   :articles.isNotEmpty? News_List_view(articles: articles)
      //   :const SliverFillRemaining(child: Center(child: Text('oops there was an error , try again later',style: TextStyle(fontSize: 20),)),);
  }
}
// List<Articelmodel>articles = [];
// bool Isloading = true;
