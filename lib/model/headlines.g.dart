// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headlines.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HeadLines> _$headLinesSerializer = new _$HeadLinesSerializer();
Serializer<Articles> _$articlesSerializer = new _$ArticlesSerializer();

class _$HeadLinesSerializer implements StructuredSerializer<HeadLines> {
  @override
  final Iterable<Type> types = const [HeadLines, _$HeadLines];
  @override
  final String wireName = 'HeadLines';

  @override
  Iterable<Object> serialize(Serializers serializers, HeadLines object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'articles',
      serializers.serialize(object.articles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Articles)])),
    ];

    return result;
  }

  @override
  HeadLines deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HeadLinesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Articles)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ArticlesSerializer implements StructuredSerializer<Articles> {
  @override
  final Iterable<Type> types = const [Articles, _$Articles];
  @override
  final String wireName = 'Articles';

  @override
  Iterable<Object> serialize(Serializers serializers, Articles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'publishedAt',
      serializers.serialize(object.publishedAt,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];
    if (object.urlToImage != null) {
      result
        ..add('urlToImage')
        ..add(serializers.serialize(object.urlToImage,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Articles deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticlesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
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
        case 'urlToImage':
          result.urlToImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HeadLines extends HeadLines {
  @override
  final BuiltList<Articles> articles;

  factory _$HeadLines([void Function(HeadLinesBuilder) updates]) =>
      (new HeadLinesBuilder()..update(updates)).build();

  _$HeadLines._({this.articles}) : super._() {
    if (articles == null) {
      throw new BuiltValueNullFieldError('HeadLines', 'articles');
    }
  }

  @override
  HeadLines rebuild(void Function(HeadLinesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HeadLinesBuilder toBuilder() => new HeadLinesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HeadLines && articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc(0, articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HeadLines')..add('articles', articles))
        .toString();
  }
}

class HeadLinesBuilder implements Builder<HeadLines, HeadLinesBuilder> {
  _$HeadLines _$v;

  ListBuilder<Articles> _articles;
  ListBuilder<Articles> get articles =>
      _$this._articles ??= new ListBuilder<Articles>();
  set articles(ListBuilder<Articles> articles) => _$this._articles = articles;

  HeadLinesBuilder();

  HeadLinesBuilder get _$this {
    if (_$v != null) {
      _articles = _$v.articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HeadLines other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HeadLines;
  }

  @override
  void update(void Function(HeadLinesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HeadLines build() {
    _$HeadLines _$result;
    try {
      _$result = _$v ?? new _$HeadLines._(articles: articles.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HeadLines', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Articles extends Articles {
  @override
  final String author;
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String urlToImage;
  @override
  final String publishedAt;
  @override
  final String content;

  factory _$Articles([void Function(ArticlesBuilder) updates]) =>
      (new ArticlesBuilder()..update(updates)).build();

  _$Articles._(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content})
      : super._() {
    if (author == null) {
      throw new BuiltValueNullFieldError('Articles', 'author');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Articles', 'title');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Articles', 'description');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Articles', 'url');
    }
    if (publishedAt == null) {
      throw new BuiltValueNullFieldError('Articles', 'publishedAt');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('Articles', 'content');
    }
  }

  @override
  Articles rebuild(void Function(ArticlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticlesBuilder toBuilder() => new ArticlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Articles &&
        author == other.author &&
        title == other.title &&
        description == other.description &&
        url == other.url &&
        urlToImage == other.urlToImage &&
        publishedAt == other.publishedAt &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, author.hashCode), title.hashCode),
                        description.hashCode),
                    url.hashCode),
                urlToImage.hashCode),
            publishedAt.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Articles')
          ..add('author', author)
          ..add('title', title)
          ..add('description', description)
          ..add('url', url)
          ..add('urlToImage', urlToImage)
          ..add('publishedAt', publishedAt)
          ..add('content', content))
        .toString();
  }
}

class ArticlesBuilder implements Builder<Articles, ArticlesBuilder> {
  _$Articles _$v;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _urlToImage;
  String get urlToImage => _$this._urlToImage;
  set urlToImage(String urlToImage) => _$this._urlToImage = urlToImage;

  String _publishedAt;
  String get publishedAt => _$this._publishedAt;
  set publishedAt(String publishedAt) => _$this._publishedAt = publishedAt;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  ArticlesBuilder();

  ArticlesBuilder get _$this {
    if (_$v != null) {
      _author = _$v.author;
      _title = _$v.title;
      _description = _$v.description;
      _url = _$v.url;
      _urlToImage = _$v.urlToImage;
      _publishedAt = _$v.publishedAt;
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Articles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Articles;
  }

  @override
  void update(void Function(ArticlesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Articles build() {
    final _$result = _$v ??
        new _$Articles._(
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            publishedAt: publishedAt,
            content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
