import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:news_org/model/headlines.dart';
import 'package:news_org/model/news.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  News,
  HeadLines,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
