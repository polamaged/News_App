import 'package:dio/dio.dart';
import 'package:news_app/Model/ArticleModel.dart';


class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<Articelmodel>>get_generalNews({required String catagory}) async {
    try {
      Response response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=pub_88040532dc6603e2d748979121f0059a42b33&country=eg&category=$catagory',
      );
      // Response response = await dio.get(
      //   'https://newsapi.org/v2/top-headlines?country=us&apiKey=5a0a52e79af14501818938bed1eea4ad',
      // );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];
      List<Articelmodel> articlesList = [];

      for(var article in articles)
        {
          Articelmodel articlemodel = Articelmodel.fromjson(article);
          articlesList.add(articlemodel);
        }

      return articlesList;
    } catch (e) {
    return [];
    }
  }
}
