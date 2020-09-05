import 'package:dio/dio.dart';
import 'package:exercicio7start/models/news_list.response.dart';
import 'package:dotenv/dotenv.dart';

class Api {
  static retrieveNews() async {
    Dio dio = Dio();
    dio.options.baseUrl = 'https://api.currentsapi.services/v1/';

    Response response = await dio.get('latest-news?apiKey=HJrI8RIVCmP1sFWynN0mgMiuHHGlL9xUM4KRfiMSOeITmU2E');
    return NewsList.fromJson(response.data);
  }
}