import 'package:flutter/material.dart';
import 'educationdetail_page.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  String selectedFilter = 'All';

  List<Article> articles = [
    Article(
        'gambar_baby1.jpg',
        'Bonding with my baby',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla accumsan suscipit ex, ut scelerisque nibh aliquam non. Suspendisse sollicitudin massa vulputate, hendrerit erat sit amet, semper nunc. Donec nec metus eu ligula euismod posuere. Praesent placerat luctus sem, eu ornare lorem consequat vel. Mauris vitae nibh ultricies, tristique sem id, semper ligula. Nullam laoreet nulla vitae nisl egestas, auctor venenatis lorem posuere. Mauris sit amet semper tortor, in lacinia nibh. Mauris suscipit consequat eros vel condimentum. Donec vel tincidunt eros. Fusce eleifend magna non massa tincidunt bibendum. Ut eu orci scelerisque, luctus eros vitae, dapibus arcu. Pellentesque feugiat mattis libero, non efficitur lectus vehicula accumsan. Nam tellus massa, congue nec pellentesque laoreet, ultricies id ante. Integer facilisis sit amet tellus et pharetra. Phasellus sit amet enim elit. Nam nibh massa, lacinia ac accumsan porttitor, porttitor vel ex. \n\nSed accumsan turpis congue, hendrerit elit sed, pharetra nibh. Suspendisse aliquam egestas gravida. Pellentesque malesuada accumsan facilisis. In hac habitasse platea dictumst. Morbi non tincidunt ex. Nullam euismod, tortor id elementum sagittis, felis odio euismod est, sit amet varius dolor elit id nisi. Curabitur ac nunc a mi consectetur bibendum vitae vel libero. Nullam hendrerit imperdiet massa non elementum. Suspendisse potenti. Quisque consectetur sem urna. Curabitur efficitur est ut neque sollicitudin varius. In blandit ipsum id augue elementum euismod. Nunc laoreet eget enim id cursus. \n\nDonec convallis, nisl eu efficitur blandit, mi nibh suscipit nunc, sed pretium metus velit sagittis ex. Cras non arcu eu arcu rhoncus lacinia. Aenean faucibus condimentum massa sit amet elementum. Aenean et fringilla magna, vitae dignissim felis. Proin vitae ipsum facilisis, feugiat nisi quis, aliquam felis. Phasellus in elementum odio. Duis vitae ligula eros. Vivamus laoreet nulla leo, nec auctor quam blandit et. Maecenas sit amet vehicula tortor. Quisque volutpat urna eros, at blandit quam suscipit ut. \n\nSuspendisse eleifend a tortor quis condimentum. Sed vel pulvinar elit. Nulla ultricies, nisl in eleifend aliquam, lacus dolor pharetra nunc, ut commodo nibh nulla vitae mi. Vivamus vulputate consequat massa, ac efficitur purus pretium semper. Etiam vehicula elementum neque, et imperdiet ex elementum ac. Fusce ut mauris quis tellus aliquet varius eget eu sem. Ut vel sapien dui. In congue scelerisque lacus, ac auctor orci. Phasellus nec tristique quam, nec elementum ipsum. Mauris eu nulla vel tellus eleifend viverra et sit amet leo. Fusce pretium, nibh quis semper hendrerit, felis enim porttitor nunc, vitae consectetur urna odio eu ipsum. Mauris in aliquam risus. Cras eros ipsum, vehicula nec fringilla ac, consequat in nisi.',
        'activity'),
    Article(
        'babymom.webp',
        '“Excuse you!” Are you burping baby?',
        'Suspendisse cursus viverra est eu interdum. Sed magna metus, venenatis in orci in, ultrices aliquam nisl. Sed a elementum mauris. Donec fermentum, erat ac consequat semper, tortor leo faucibus leo, non sodales lorem tellus at justo. Nullam ut velit ut justo euismod tempus nec sed orci. In pharetra ac ligula ut placerat. Sed lacinia, turpis ut eleifend placerat, nulla quam sollicitudin ligula, non pretium nulla erat ut ipsum. Fusce aliquam vitae neque ut dignissim. Quisque volutpat vel nisl ac sollicitudin. Praesent quis nisl ullamcorper, commodo diam non, lacinia quam. Cras convallis eu nisi a pharetra. Morbi placerat consectetur lorem, eget gravida nisl pellentesque eget. Aliquam nisl sapien, mattis quis rutrum nec, volutpat in purus. Morbi nec erat porttitor, posuere sem a, egestas risus. Fusce efficitur nisl vitae velit luctus, at dignissim leo consectetur. Sed a odio facilisis, ullamcorper arcu nec, placerat nunc.\n\nVivamus consectetur turpis vel ipsum sagittis finibus. Proin rhoncus lacus eu odio egestas placerat id id quam. Ut euismod libero quis lacus suscipit, non condimentum magna dapibus. Phasellus nec congue mauris, eget congue urna. Ut eu interdum ex, sit amet tincidunt nulla. Phasellus fermentum ac metus et interdum. Etiam rhoncus mauris ex, vel ultricies lacus congue quis. Ut finibus viverra iaculis. In sit amet ullamcorper tortor, pretium suscipit nulla. Nam non vestibulum nisl, sed pharetra urna. Etiam vel hendrerit mi, ac consectetur nibh. Phasellus ultrices tristique quam, at vehicula ligula. Aliquam sit amet mauris ante. Nulla facilisi. Vestibulum non ornare ante.\n\nVivamus maximus scelerisque lectus convallis aliquam. Nullam dictum quam vitae accumsan hendrerit. Fusce eget tellus gravida, sagittis orci nec, posuere nisi. Proin fringilla ex sit amet purus dignissim, ac suscipit nisl varius. Proin volutpat felis arcu, at hendrerit mauris condimentum vitae. Nunc diam ex, lobortis fermentum sem ut, venenatis pulvinar nisl. Vivamus sed lorem id arcu pretium malesuada. Duis bibendum justo id pulvinar convallis. Pellentesque suscipit velit vel magna dignissim dapibus. Vestibulum ac faucibus quam.\n\nCras porttitor id turpis sed convallis. Donec vitae vulputate nisi, vitae semper massa. Aenean quis ipsum bibendum, ultrices massa ut, ultrices diam. Fusce euismod sagittis tempor. Praesent eros dui, iaculis non lorem lacinia, maximus tristique ipsum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent accumsan efficitur velit in porttitor. Proin id tristique odio. Sed a auctor lacus. Mauris ex erat, dictum sed fringilla vitae, bibendum eget odio. In mauris orci, efficitur at accumsan vel, scelerisque non orci. Quisque ut urna vitae urna maximus commodo. Nulla vehicula libero id metus varius blandit. Morbi hendrerit rutrum vestibulum.',
        'blog'),
    Article(
        'gambar_baby2.png',
        'Your baby’s fingernails',
        'Donec vitae gravida justo. Nulla quis venenatis mauris. Aliquam odio odio, tempus ac quam ac, pretium pharetra augue. Phasellus consectetur nunc sed ante congue, sit amet accumsan turpis congue. Quisque malesuada tellus rhoncus orci bibendum, in vulputate diam lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus mauris ante, sollicitudin vel interdum sit amet, gravida ac sapien. Praesent tristique augue ante, eget gravida est luctus ac. Mauris sed felis id nisl porttitor facilisis. Mauris a turpis sed magna mattis scelerisque. Maecenas facilisis mi tincidunt dolor suscipit tempus. Cras dignissim elit eu facilisis sagittis. Nunc ipsum justo, auctor et scelerisque id, malesuada dapibus tellus. Nunc quis dolor a velit placerat commodo. Nam aliquam pharetra odio quis condimentum. Morbi pellentesque neque magna, et tincidunt nunc pulvinar vel.\n\nNam eleifend vehicula erat tristique vestibulum. Phasellus posuere quam odio, sit amet suscipit ipsum semper sed. Phasellus varius ante sed velit maximus iaculis ac ac augue. Mauris malesuada laoreet ante at mattis. Aenean eu fermentum dui. Aenean nec ligula urna. Cras vitae lacus aliquet, convallis diam sed, elementum est. Sed egestas consectetur sem in eleifend. Duis non augue vel felis condimentum pretium. Maecenas dictum pulvinar eros, quis molestie nunc vestibulum varius. Cras aliquet orci nec arcu cursus ullamcorper. Ut id libero in ligula blandit venenatis nec ut tellus.\n\nAliquam facilisis ut turpis ac dapibus. Nulla eget dui hendrerit, porta elit a, varius nisl. Donec semper convallis justo, eu aliquam purus pulvinar vitae. Donec facilisis lorem elit, laoreet venenatis risus tincidunt a. Donec in iaculis neque, at feugiat risus. Nulla non dolor eget nulla aliquet ultricies. Donec elit risus, eleifend blandit neque sed, gravida porttitor lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut vel tristique neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis semper consectetur leo eget lacinia. Sed sodales nibh in lacus ultrices rutrum. Sed vitae magna sodales, faucibus ligula vel, efficitur urna. Fusce nunc diam, maximus a ullamcorper sed, efficitur in lorem.\n\nSed erat dui, suscipit ut metus sit amet, tristique porttitor tortor. Quisque in sagittis ligula, sed molestie erat. Aliquam varius odio id elit condimentum blandit. Maecenas fermentum imperdiet orci, ut dictum eros posuere in. Curabitur nisl mauris, pellentesque facilisis tortor vel, aliquam venenatis turpis. Quisque efficitur tortor quis risus finibus, nec aliquam augue aliquam. Nam sit amet efficitur felis. Pellentesque in purus at mi fermentum malesuada. Pellentesque venenatis, purus sed porta consectetur, leo nulla hendrerit massa, at lobortis sem nisi tristique lacus. Quisque sed augue enim. Nulla elementum ex lorem, congue ornare enim auctor eget. Ut cursus ullamcorper velit, eu gravida orci scelerisque ac. Morbi pharetra eros sit amet fermentum varius. Sed elementum magna lectus, ut egestas felis malesuada eu.',
        'guide'),
  ];

  List<Article> getFilteredArticles() {
    if (selectedFilter == 'All') {
      return articles;
    } else {
      return articles
          .where((article) => article.type == selectedFilter)
          .toList();
    }
  }

  void _showFilterModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('All'),
                onTap: () {
                  _updateFilter('All');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Activity'),
                onTap: () {
                  _updateFilter('activity');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Blog'),
                onTap: () {
                  _updateFilter('blog');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Guide'),
                onTap: () {
                  _updateFilter('guide');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _updateFilter(String newFilter) {
    setState(() {
      selectedFilter = newFilter;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Article> filteredArticles = getFilteredArticles();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Article'),
          backgroundColor: Color.fromARGB(255, 255, 109, 158),
          actions: [
            IconButton(
              onPressed: () => _showFilterModal(context),
              icon: Icon(Icons.filter_list),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: filteredArticles.length,
          itemBuilder: (context, index) {
            return ArticleCard(article: filteredArticles[index]);
          },
        ),
      ),
    );
  }
}

class Article {
  final String image;
  final String title;
  final String description;
  final String type;

  Article(this.image, this.title, this.description, this.type);
}

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({required this.article, Key? key}) : super(key: key);

  IconData getIconByType(String type) {
    switch (type) {
      case 'activity':
        return Icons.gamepad;

      case 'blog':
        return Icons.format_list_bulleted_rounded;

      case 'guide':
        return Icons.lightbulb;

      default:
        return Icons.info;
    }
  }

  void _navigateToDetailPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArticleDetailPage(article: article),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetailPage(context),
      child: Card(
        margin: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'lib/assets/images/${article.image}',
                    width: double.infinity,
                    height: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 14.0), // Jarak antara gambar dan judul
                ListTile(
                  title: Text(
                    article.title,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      article.description,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      maxLines:
                          2, // Sesuaikan dengan jumlah baris yang diinginkan
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(
                    height: 8.0), // Jarak antara description dan bagian bawah
              ],
            ),
            Positioned(
              top: 100.0,
              left: 27, // Sesuaikan tinggi dari atas
              child: Container(
                width: 50.0,
                height: 50.0,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, // Warna lingkaran pertama (putih)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(
                        255, 90, 181, 255), // Warna lingkaran kedua (biru)
                  ),
                  child: Icon(
                    getIconByType(article.type),
                    color: Colors.white,
                    size: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
