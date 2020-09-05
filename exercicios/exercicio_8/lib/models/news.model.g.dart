// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    url: json['url'] as String,
    author: json['author'] as String,
    img: json['img'] as String,
    language: json['language'] as String,
  );
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'author': instance.author,
      'img': instance.img,
      'language': instance.language,
    };
