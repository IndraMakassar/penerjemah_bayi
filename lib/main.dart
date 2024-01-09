import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Artikel'),
        ),
        body: ArticleList(),
      ),
    );
  }
}

class ArticleList extends StatelessWidget {
  final List<Article> articles = [
    Article('Judul Artikel 1', 'Deskripsi artikel 1', 'gambar1.jpg'),
    Article('Judul Artikel 2', 'Deskripsi artikel 2', 'gambar2.jpg'),
    Article('Judul Artikel 3', 'Deskripsi artikel 3', 'gambar3.jpg'),
    // Tambahkan artikel sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return ArticleCard(articles[index]);
      },
    );
  }
}

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard(this.article, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            article.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 150.0,
          ),
          ListTile(
            title: Text(article.title),
            subtitle: Text(article.description),
          ),
        ],
      ),
    );
  }
}

class Article {
  final String title;
  final String description;
  final String imageUrl;

  Article(this.title, this.description, this.imageUrl);
}
