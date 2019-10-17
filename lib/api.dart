import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_org/model/headlines.dart';
import 'package:news_org/model/news.dart';
import 'package:news_org/model/serializers.dart';

// get news sources
Future<List<Sources>> getSources() async {
  const String baseURL =
      'https://newsapi.org/v2/sources?apikey=042457be13e648bdb77d7f01ca5daf0d';

  final response =
      await http.get(Uri.parse(baseURL)).timeout(Duration(seconds: 60));

  News news =
      serializers.deserializeWith(News.serializer, json.decode(response.body));

  return news.sources.map((sources) => sources).toList();
}

// get news articles
Future<List<Articles>> getArticles(String id) async {
  String baseURL =
      'https://newsapi.org/v2/top-headlines?sources=$id&apikey=042457be13e648bdb77d7f01ca5daf0d';

  final response =
      await http.get(Uri.parse(baseURL)).timeout(Duration(seconds: 60));

  HeadLines headLines = serializers.deserializeWith(
      HeadLines.serializer, json.decode(response.body));

  return headLines.articles.map((articles) => articles).toList();
}
