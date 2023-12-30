// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma/Widgets/AppBarWidget.dart';
import 'package:ma/Widgets/CategoriesWidget.dart';
import 'package:ma/Widgets/SpecialtemsWidget.dart';
import 'package:ma/Widgets/PopularItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),

          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Tìm kiếm món ưa thích của bạn",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),

          //Category
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Danh mục",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //Category Widget
          CategoriesWidget(),

          //Popular Items
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Phổ biến",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //Popular Items Widget
          PopularItemsWidget(),

          //Newest Items
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Đặc biệt",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          //Newest Item Widget
          SpecialItemsWidget(),
          Container(
            margin: EdgeInsets.only(
              bottom: 10,
              right: 200,
              left: 200,
            ),
            child: ElevatedButton(
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 141, 161, 177),
                minimumSize: Size(60, 60),
                elevation: 10,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
