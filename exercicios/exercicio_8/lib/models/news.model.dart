import 'package:json_annotation/json_annotation.dart';

part 'news.model.g.dart';

@JsonSerializable(nullable: false)
class News {
  final String id;
  final String title;
  final String description;
  final String url;
  final String author;
  final String img;
  final String language;

  News({this.id, this.title, this.description, this.url, this.author, this.img, this.language});

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}