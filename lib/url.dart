import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:news_org/model/headlines.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsUrl extends StatefulWidget {
  Articles articles;
  String sources;
  NewsUrl(this.articles, this.sources);

  @override
  _NewsUrlState createState() => _NewsUrlState();
}

class _NewsUrlState extends State<NewsUrl> {
  bool _isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.sources),centerTitle: true,),
      body: ModalProgressHUD(
        child: WebView(
          initialUrl: widget.articles.url,
          javascriptMode: JavascriptMode.unrestricted,
          onPageFinished: pageFinishedLoading,
        ),
        inAsyncCall: _isLoading,
      ),
    );
  }

  void pageFinishedLoading(String url) {
    setState(() {
      _isLoading = false;
    });
  }
}
