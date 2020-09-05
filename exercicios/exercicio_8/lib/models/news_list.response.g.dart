// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_list.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsList _$NewsListFromJson(Map<String, dynamic> json) {
  return NewsList(
    status: json['status'] as String,
    news: (json['news'] as List)
        .map((e) => News.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$NewsListToJson(NewsList instance) => <String, dynamic>{
      'status': instance.status,
      'news': instance.news,
    };
