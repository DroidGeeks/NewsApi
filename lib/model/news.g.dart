// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<News> _$newsSerializer = new _$NewsSerializer();
Serializer<Sources> _$sourcesSerializer = new _$SourcesSerializer();

class _$NewsSerializer implements StructuredSerializer<News> {
  @override
  final Iterable<Type> types = const [News, _$News];
  @override
  final String wireName = 'News';

  @override
  Iterable<Object> serialize(Serializers serializers, News object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sources',
      serializers.serialize(object.sources,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Sources)])),
    ];

    return result;
  }

  @override
  News deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sources':
          result.sources.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Sources)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$SourcesSerializer implements StructuredSerializer<Sources> {
  @override
  final Iterable<Type> types = const [Sources, _$Sources];
  @override
  final String wireName = 'Sources';

  @override
  Iterable<Object> serialize(Serializers serializers, Sources object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'language',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Sources deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SourcesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$News extends News {
  @override
  final BuiltList<Sources> sources;

  factory _$News([void Function(NewsBuilder) updates]) =>
      (new NewsBuilder()..update(updates)).build();

  _$News._({this.sources}) : super._() {
    if (sources == null) {
      throw new BuiltValueNullFieldError('News', 'sources');
    }
  }

  @override
  News rebuild(void Function(NewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsBuilder toBuilder() => new NewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is News && sources == other.sources;
  }

  @override
  int get hashCode {
    return $jf($jc(0, sources.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('News')..add('sources', sources))
        .toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder> {
  _$News _$v;

  ListBuilder<Sources> _sources;
  ListBuilder<Sources> get sources =>
      _$this._sources ??= new ListBuilder<Sources>();
  set sources(ListBuilder<Sources> sources) => _$this._sources = sources;

  NewsBuilder();

  NewsBuilder get _$this {
    if (_$v != null) {
      _sources = _$v.sources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(News other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$News;
  }

  @override
  void update(void Function(NewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$News build() {
    _$News _$result;
    try {
      _$result = _$v ?? new _$News._(sources: sources.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'News', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Sources extends Sources {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String url;
  @override
  final String category;
  @override
  final String language;
  @override
  final String country;

  factory _$Sources([void Function(SourcesBuilder) updates]) =>
      (new SourcesBuilder()..update(updates)).build();

  _$Sources._(
      {this.id,
      this.name,
      this.description,
      this.url,
      this.category,
      this.language,
      this.country})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Sources', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Sources', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Sources', 'description');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Sources', 'url');
    }
    if (category == null) {
      throw new BuiltValueNullFieldError('Sources', 'category');
    }
    if (language == null) {
      throw new BuiltValueNullFieldError('Sources', 'language');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('Sources', 'country');
    }
  }

  @override
  Sources rebuild(void Function(SourcesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourcesBuilder toBuilder() => new SourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sources &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        url == other.url &&
        category == other.category &&
        language == other.language &&
        country == other.country;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        description.hashCode),
                    url.hashCode),
                category.hashCode),
            language.hashCode),
        country.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sources')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('url', url)
          ..add('category', category)
          ..add('language', language)
          ..add('country', country))
        .toString();
  }
}

class SourcesBuilder implements Builder<Sources, SourcesBuilder> {
  _$Sources _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  SourcesBuilder();

  SourcesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _url = _$v.url;
      _category = _$v.category;
      _language = _$v.language;
      _country = _$v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sources other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Sources;
  }

  @override
  void update(void Function(SourcesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sources build() {
    final _$result = _$v ??
        new _$Sources._(
            id: id,
            name: name,
            description: description,
            url: url,
            category: category,
            language: language,
            country: country);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
