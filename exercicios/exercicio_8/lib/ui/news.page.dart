import 'package:exercicio7start/models/news.model.dart';
import 'package:exercicio7start/models/news_list.response.dart';
import 'package:exercicio7start/network/api.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}


class _NewsPageState extends State<NewsPage> {
  NewsList _newsList;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _requestNews();
  }

  _requestNews() async {
    setState(() {});
    _newsList = null;
    _newsList = await Api.retrieveNews();
    setState(() {});
  }

  Widget _buildContent(News news) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          height: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
            color: Color(0xff595151),
          ),
          child: Column(
            children: <Widget>[
              Image(
                  image: (news.img != null
                      ? NetworkImage(news.img)
                      : NetworkImage('https://i.insider.com/5f4c7c887ffa48002894d16b?width=1200&format=jpeg'))
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(news.title, style: TextStyle(fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w900)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Text(news.description,
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              )
            ],
          ),
        ),
      );
    }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0B1723),
          title: Text(
              'News',
              style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: _newsList == null
            ? Container(
              child: Text('Please wait...'),
            )
            : Container(
                color: Color(0xff0B1723),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ListView(
                    children: _newsList.news.map((item) => _buildContent(item)).toList()
                  )
                )
            )
    );
  }
}