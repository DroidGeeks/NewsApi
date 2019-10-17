import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_org/api.dart';
import 'package:news_org/model/headlines.dart';
import 'package:news_org/model/news.dart';
import 'package:news_org/url.dart';

class NewsHeadLines extends StatefulWidget {
  Sources sources;

  NewsHeadLines(this.sources);

  @override
  _NewsHeadLinesState createState() => _NewsHeadLinesState();
}

class _NewsHeadLinesState extends State<NewsHeadLines> {
  List<Articles> _articleList = [];
  bool _isLoading;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    _fetchArticles();
  }

  List<Widget> _buildExpansionTile() {
    return _articleList
        .map((a) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                leading: a.urlToImage == null
                    ? Image.asset('assets/placeholder.jpg')
                    : Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(a.urlToImage))),
                      ),
                title: Text(
                  a.title == null ? '' : a.title,
                  style: TextStyle(color: Colors.black87, fontSize: 22.0),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      a.content == null ? '' : a.content,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        a.author == null ? '' : 'Author(s):\n${a.author}',
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NewsUrl(a, widget.sources.name)),
                          );
                        },
                        icon: Icon(
                          Icons.launch,
                          color: Colors.deepPurple,
                        ),
                        splashColor: Colors.deepPurpleAccent,
                      )
                    ],
                  )
                ],
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.sources.name),
        centerTitle: true,
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            _fetchArticles();
          },
          child: _isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  children: _buildExpansionTile(),
                )),
    );
  }

  void _fetchArticles() {
    setState(() {
      _isLoading = true;
    });
    getArticles(widget.sources.id).then((articles) {
      setState(() {
        _isLoading = false;
        _articleList = articles;
      });
    }).catchError((onError) {
      setState(() {
        _isLoading = false;
      });
      if (onError.toString().contains('TimeoutException')) {
        _showDialog('Timeout', 'network timeout.');
      } else {
        _showDialog('Error', onError.toString());
      }
    });
  }

  void _showDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pop();
            _fetchArticles();
          },
          color: Colors.deepPurple,
          splashColor: Colors.deepPurpleAccent,
          textColor: Colors.white,
          child: Text(
            'Retry',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }
}
