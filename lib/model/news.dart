import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news.g.dart';

abstract class News implements Built<News, NewsBuilder> {
  BuiltList<Sources> get sources;

  News._();
  factory News([updates(NewsBuilder b)]) = _$News;
  static Serializer<News> get serializer => _$newsSerializer;
}

abstract class Sources implements Built<Sources, SourcesBuilder> {
  @nullable
  String get id;
  @nullable
  String get name;
  @nullable
  String get description;
  @nullable
  String get url;
  @nullable
  String get category;
  @nullable
  String get language;
  @nullable
  String get country;

  Sources._();
  factory Sources([updates(SourcesBuilder b)]) = _$Sources;
  static Serializer<Sources> get serializer => _$sourcesSerializer;
}
