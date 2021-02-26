import 'package:flutter/material.dart';
import 'package:ui_onlinecourses/constant.dart';

import 'package:ui_onlinecourses/widget/category_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.menu),
                      ),
                      Image.asset('assets/images/profile.png'),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Hei Adi,',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Find a course you want to learn',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff61688b),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.grey[200],
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    elevation: 0,
                    focusElevation: 0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for everything',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff6e81fa),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: categoryData.map((category) {
                      return CategoryCard(
                        category['tittle'],
                        category['courseAmount'],
                        category['imageUrl'],
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
