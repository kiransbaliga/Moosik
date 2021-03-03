//packages

//other files


import 'package:flutter/material.dart';
import 'package:moosik/Components/albumitems.dart';

class TrendingListItems extends StatelessWidget {
  final Album album;
  TrendingListItems(this.album);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.black,
        
        child: Container(
          // height: MediaQuery.of(context).size.height*0.33,
             width: MediaQuery.of(context).size.width,

          child: Image.network(
            album.image,
            fit: BoxFit.fitWidth,
          ),
      ),
      ),
    );
  }
}
