import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:penerjemah_bayi/pages/education_page.dart';
import 'package:penerjemah_bayi/pages/main_page.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  icon: Icon(Icons.close),
                  iconSize: 32),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "lib/assets/icons/hungry.svg",
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Hungry",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 32),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 320,
                      color: Colors.grey[300],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 8),
                            child: Text(
                              "Suggestion",
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              height: 270,
                              child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return ArticleCard(
                                    article: Article(
                                      'gambar_baby1.jpg',
                                      'Bonding with my baby',
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla accumsan suscipit ex, ut scelerisque nibh aliquam non. Suspendisse sollicitudin massa vulputate, hendrerit erat sit amet, semper nunc. Donec nec metus eu ligula euismod posuere. Praesent placerat luctus sem, eu ornare lorem consequat vel. Mauris vitae nibh ultricies, tristique sem id, semper ligula. Nullam laoreet nulla vitae nisl egestas, auctor venenatis lorem posuere. Mauris sit amet semper tortor, in lacinia nibh. Mauris suscipit consequat eros vel condimentum. Donec vel tincidunt eros. Fusce eleifend magna non massa tincidunt bibendum. Ut eu orci scelerisque, luctus eros vitae, dapibus arcu. Pellentesque feugiat mattis libero, non efficitur lectus vehicula accumsan. Nam tellus massa, congue nec pellentesque laoreet, ultricies id ante. Integer facilisis sit amet tellus et pharetra. Phasellus sit amet enim elit. Nam nibh massa, lacinia ac accumsan porttitor, porttitor vel ex. \n\nSed accumsan turpis congue, hendrerit elit sed, pharetra nibh. Suspendisse aliquam egestas gravida. Pellentesque malesuada accumsan facilisis. In hac habitasse platea dictumst. Morbi non tincidunt ex. Nullam euismod, tortor id elementum sagittis, felis odio euismod est, sit amet varius dolor elit id nisi. Curabitur ac nunc a mi consectetur bibendum vitae vel libero. Nullam hendrerit imperdiet massa non elementum. Suspendisse potenti. Quisque consectetur sem urna. Curabitur efficitur est ut neque sollicitudin varius. In blandit ipsum id augue elementum euismod. Nunc laoreet eget enim id cursus. \n\nDonec convallis, nisl eu efficitur blandit, mi nibh suscipit nunc, sed pretium metus velit sagittis ex. Cras non arcu eu arcu rhoncus lacinia. Aenean faucibus condimentum massa sit amet elementum. Aenean et fringilla magna, vitae dignissim felis. Proin vitae ipsum facilisis, feugiat nisi quis, aliquam felis. Phasellus in elementum odio. Duis vitae ligula eros. Vivamus laoreet nulla leo, nec auctor quam blandit et. Maecenas sit amet vehicula tortor. Quisque volutpat urna eros, at blandit quam suscipit ut. \n\nSuspendisse eleifend a tortor quis condimentum. Sed vel pulvinar elit. Nulla ultricies, nisl in eleifend aliquam, lacus dolor pharetra nunc, ut commodo nibh nulla vitae mi. Vivamus vulputate consequat massa, ac efficitur purus pretium semper. Etiam vehicula elementum neque, et imperdiet ex elementum ac. Fusce ut mauris quis tellus aliquet varius eget eu sem. Ut vel sapien dui. In congue scelerisque lacus, ac auctor orci. Phasellus nec tristique quam, nec elementum ipsum. Mauris eu nulla vel tellus eleifend viverra et sit amet leo. Fusce pretium, nibh quis semper hendrerit, felis enim porttitor nunc, vitae consectetur urna odio eu ipsum. Mauris in aliquam risus. Cras eros ipsum, vehicula nec fringilla ac, consequat in nisi.',
                                      'activity',
                                    ),
                                  );
                                },
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
