import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma/Widgets/AppBarWidget.dart';
import 'package:ma/Widgets/CategoriesWidget.dart';
import 'package:ma/Widgets/SpecialtemsWidget.dart';
import 'package:ma/Widgets/PopularItemsWidget.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _addFoodController = TextEditingController();
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: "Delete",
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            // Show dialog when "Add" button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                String userInput =
                    ''; // Biến để lưu trữ giá trị nhập từ bàn phím

                return AlertDialog(
                  title: Text("Add Item"),
                  content: Column(
                    children: [
                      TextField(
                        controller: _addFoodController,
                        onChanged: (value) {
                          userInput =
                              value; // Cập nhật giá trị khi người dùng nhập
                        },
                        decoration: InputDecoration(labelText: 'Item '),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        // Xử lý khi người dùng nhấn nút "Add"
                        // Ở đây, bạn có thể thêm giá trị `userInput` vào danh sách hoặc làm điều gì đó khác
                        print('User input: $userInput');
                        Navigator.of(context).pop(); // Đóng dialog
                      },
                      child: Text("Add"),
                    ),
                    TextButton(
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
            // Show dialog when "Add" button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Search Item"),
                  content: Text("Your custom content goes here."),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close"),
                    ),
                  ],
                );
              },
            );
          }
          if (index == 2) {
            // Show dialog when "Add" button is pressed
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Delete Item"),
                  content: Text("Your custom content goes here."),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
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
