// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma/Widgets/AppBarWidget.dart';
import 'package:ma/Widgets/CategoriesWidget.dart';
import 'package:ma/Widgets/SpecialtemsWidget.dart';
import 'package:ma/Widgets/PopularItemsWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleReview = TextEditingController();
  TextEditingController subtitleReview = TextEditingController();
  List<String> titles = ["Nguyễn Văn A", "Nguyễn Văn B", "Nguyễn Văn C"];
  List<String> subtitles = [
    "Rất ngon.",
    "Thực sự tuyệt vời.",
    "Nên thử một lần."
  ];

  void addReview() {
    String title = titleReview.text;
    String subtitle = subtitleReview.text;

    if (title.isNotEmpty && subtitle.isNotEmpty) {
      setState(() {
        titles.add(title);
        subtitles.add(subtitle);
      });

      titleReview.clear();
      subtitleReview.clear();
      Navigator.pop(context); // Close the dialog
    }
  }

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

          // Category
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

          // Category Widget
          CategoriesWidget(),

          // Popular Items
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
          // Popular Items Widget
          PopularItemsWidget(),
          // Newest Items
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
          // Newest Item Widget
          SpecialItemsWidget(),

          // Reviews
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Đánh giá",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: titles.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(titles[index]),
                            subtitle: Text(subtitles[index]),
                            trailing: IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                // Add logic to delete the review
                                setState(() {
                                  titles.removeAt(index);
                                  subtitles.removeAt(index);
                                });
                              },
                            ),
                            onTap: () {},
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Feedback",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone, color: Colors.green),
            label: "Contact",
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            // Show dialog when "Add" button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Góp ý:"),
                  content: Column(
                    children: [
                      TextField(
                        controller: titleReview,
                        decoration: InputDecoration(labelText: 'Tên'),
                      ),
                      TextField(
                        controller: subtitleReview,
                        decoration: InputDecoration(labelText: 'Đánh giá'),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: addReview,
                      child: Text('Add'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pop(); // Đóng dialog khi người dùng nhấn nút "Close"
                      },
                      child: Text("Close"),
                    ),
                  ],
                );
              },
            );
          }
          if (index == 1) {
            // Show dialog when "Search" button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Search Item"),
                  content: Text("Your custom content goes here."),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pop(); // Đóng dialog khi người dùng nhấn nút "Close"
                      },
                      child: Text("Close"),
                    ),
                  ],
                );
              },
            );
          }
          if (index == 2) {
            // Show dialog when "Delete" button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Phone Number:"),
                  content: Text("09842384234"),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pop(); // Đóng dialog khi người dùng nhấn nút "Close"
                      },
                      child: Text("Close"),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
