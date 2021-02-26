import 'package:flutter/material.dart';

import 'package:ui_onlinecourses/page/detail_screen.dart';

class CategoryCard extends StatelessWidget {
  final _title;
  final _courseAmount;
  final _imageUrl;

  const CategoryCard(this._title, this._courseAmount, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(_imageUrl)));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: width / 2 - 30,
          height: height / 4 - 20,
          color: Colors.grey,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: _imageUrl,
                child: Image.asset(
                  _imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$_courseAmount Courses',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff8f95b2),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
