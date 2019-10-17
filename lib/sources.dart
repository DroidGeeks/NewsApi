import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_org/api.dart';
import 'package:news_org/headlines.dart';
import 'package:news_org/model/news.dart';

class SourcesPage extends StatefulWidget {
  SourcesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SourcesPageState createState() => _SourcesPageState();
}

class _SourcesPageState extends State<SourcesPage> {
  List<Sources> _sources = [];
  bool _isLoading = false;
  int mState = 0;

  @override
  void initState() {
    super.initState();
    _fetchNews();
  }

  List<Widget> _buildListTiles() {
    return _sources
        .map((s) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewsHeadLines(s)),
                      );
                    },
                    title: Text(
                      s.name == null ? '' : s.name,
                      style:
                          TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(s.description == null ? '' : s.description),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.grey[500],
                    ),
                  ),
                  Divider(),
                ],
              ),
        ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: Icon(Icons.network_check, color: Colors.white),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            _fetchNews();
          },
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView(
                  children: _buildListTiles(),
                )),
    );
  }

  void _fetchNews() {
    setState(() {
      _isLoading = true;
    });
    getSources().then((sources) {
      setState(() {
        _isLoading = false;
        _sources = sources;
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
            _fetchNews();
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
