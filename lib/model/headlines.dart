import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'headlines.g.dart';

abstract class HeadLines implements Built<HeadLines, HeadLinesBuilder> {
  BuiltList<Articles> get articles;

  HeadLines._();
  factory HeadLines([updates(HeadLinesBuilder b)]) = _$HeadLines;
  static Serializer<HeadLines> get serializer => _$headLinesSerializer;
}

abstract class Articles implements Built<Articles, ArticlesBuilder> {
  @nullable
  String get author;
  @nullable
  String get title;
  @nullable
  String get description;
  @nullable
  String get url;
  @nullable
  String get urlToImage;
  @nullable
  String get publishedAt;
  @nullable
  String get content;

  Articles._();
  factory Articles([updates(ArticlesBuilder b)]) = _$Articles;
  static Serializer<Articles> get serializer => _$articlesSerializer;
}
