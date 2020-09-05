import 'package:exercicio7start/models/news.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_list.response.g.dart';

@JsonSerializable(nullable: false)
class NewsList {
  final String status;
  final List<News> news;

  NewsList({this.status, this.news});

  factory NewsList.fromJson(Map<String, dynamic> json) => _$NewsListFromJson(json);
}