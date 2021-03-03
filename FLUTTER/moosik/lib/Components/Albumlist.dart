//packages

//other files
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:moosik/Components/albumitems.dart';

class AlbumListItems extends StatelessWidget {
  final Album album;
  AlbumListItems(this.album);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.black,
        
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
            
          ),
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 130,
                width: 200,
                child: Image.network(
                  album.image,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Text(
                    album.sname,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400),
                  ),
              Text(
                    album.artist,
                    
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300),
             
          ),
            ],
        ),
      ),
      ),
    );
  }
}
