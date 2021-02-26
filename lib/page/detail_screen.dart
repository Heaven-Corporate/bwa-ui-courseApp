import 'package:flutter/material.dart';
import 'package:ui_onlinecourses/constant.dart';
import 'package:ui_onlinecourses/widget/custom_tile.dart';

class DetailScreen extends StatelessWidget {
  final _imageUrl;

  const DetailScreen(this._imageUrl);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: _imageUrl,
              child: Image.asset(
                _imageUrl,
                height: height / 2 + 40,
                width: width,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 30,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Color(0xff61688b),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      color: Color(0xffffd073),
                      child: Text(
                        'BESTSELLER',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Design Thinking',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          color: Color(0xff61688b),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '18k',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff61688b),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xff61688b),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff61688b),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$50',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height / 2 + 40,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Course Content',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: courseContent
                              .map((content) => CustomTile(content['number'],
                                  content['title'], content['time']))
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  height: 80,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        onPressed: () {},
                        color: Color(0xffFFEDEE),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Color(0xffFF6670),
                        ),
                      ),
                      MaterialButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Color(0xff6e8afa),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
