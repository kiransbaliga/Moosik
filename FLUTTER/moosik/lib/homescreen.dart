import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:moosik/Components/Albumlist.dart';
import 'package:moosik/Components/Trending.dart';
import 'package:moosik/Components/albumitems.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

List<int> rec = [0, 1, 2, 3, 4];
List<Album> album = [
  Album(
      sname: "Godzilla",
      sno: 1,
      artist: "Eminem",
      image: "https://i.ytimg.com/vi/9XvXF1LrWgA/maxresdefault.jpg"),
  Album(
      sname: "Lovely",
      sno: 2,
      artist: "Billie Ellish",
      image: "https://i.ytimg.com/vi/xirk18P889U/maxresdefault.jpg"),
  Album(
      sname: "Bad Blood",
      sno: 3,
      artist: "Taylor Swift",
      image:
          "https://upload.wikimedia.org/wikipedia/en/9/9b/Taylor_Swift_Feat._Kendrick_Lamar_-_Bad_Blood_%28Official_Single_Cover%29.png"),
  Album(
      sname: "In My Blood",
      sno: 4,
      artist: "Shawn Mendes",
      image:
          "https://m.media-amazon.com/images/M/MV5BYzZlOTVlODctZmFiNC00NTg4LTkwNTAtYmNhNDBiMTViNzRjXkEyXkFqcGdeQXVyNDQ5MDYzMTk@._V1_.jpg"),
  Album(
      sname: "Changes",
      sno: 5,
      artist: "Xxxtentacoin",
      image: "https://i.ytimg.com/vi/0KYVhSYHxoY/hqdefault.jpg"),
];
List<Album> banner = [
  Album(
      sname: "Lovely",
      sno: 1,
      artist: "Billie Ellish",
      image: "https://i.ytimg.com/vi/xirk18P889U/maxresdefault.jpg"),
  Album(
      sname: "Bad Blood",
      sno: 2,
      artist: "Taylor Swift",
      image:
          "https://upload.wikimedia.org/wikipedia/en/9/9b/Taylor_Swift_Feat._Kendrick_Lamar_-_Bad_Blood_%28Official_Single_Cover%29.png"),
  Album(
      sname: "In My Blood",
      sno: 3,
      artist: "Shawn Mendes",
      image:
          "https://m.media-amazon.com/images/M/MV5BYzZlOTVlODctZmFiNC00NTg4LTkwNTAtYmNhNDBiMTViNzRjXkEyXkFqcGdeQXVyNDQ5MDYzMTk@._V1_.jpg"),
  Album(
      sname: "Changes",
      sno: 4,
      artist: "Xxxtentacoin",
      image: "https://i.ytimg.com/vi/0KYVhSYHxoY/hqdefault.jpg"),
  Album(
      sname: "Godzilla",
      sno: 5,
      artist: "Eminem",
      image: "https://i.ytimg.com/vi/9XvXF1LrWgA/maxresdefault.jpg"),
];
ScrollController _scrollController = ScrollController();

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    _scrollController.animateTo(MediaQuery.of(context).size.width * 0.45, duration: Duration(milliseconds: 200), curve: Curves.easeOut);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ShaderMask(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: Swiper(
                      autoplay: true,
                      autoplayDelay: 3000,
                      curve: Curves.easeOutQuint,
                      autoplayDisableOnInteraction: true,
                      scrollDirection: Axis.horizontal,

                      itemCount: album.length,
                      itemBuilder: (BuildContext context, int index) {
                        return TrendingListItems(banner[rec[index]]);
                      },
                    ),
                  ),
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Color(0xcf192237), Color(0xaf192237)],
                      stops: [0.4, 0.7],
                      tileMode: TileMode.mirror,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.multiply,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.40,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: Text(
                        'Trending Today !',
                        style: TextStyle(
                          fontSize:  MediaQuery.of(context).size.height * 0.06,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'Albums',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: album.length,
                itemBuilder: (BuildContext context, int index) {
                  return AlbumListItems(album[rec[index]]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
