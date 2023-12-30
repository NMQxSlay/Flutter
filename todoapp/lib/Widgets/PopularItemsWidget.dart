import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  final List<String> id = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
  ];
  final List<String> image = [
    'images/burger.png',
    'images/biryani.png',
    'images/drink.png',
    'images/pizza.png',
    'images/salan.png',
    'images/biryani.png',
    'images/burger.png',
  ];

  final List<String> title = [
    "Hot Burger",
    "Chicken biryani",
    "Strawberry Sting",
    "Hot Pizza",
    "Chicken Salan",
    "Chicken biryani",
    "Hot Burger",
  ];

  final List<String> descreption = [
    "Nếm thử món Hot Burger của chúng tôi",
    "Nếm thử món Chicken biryani của chúng tôi",
    "Uống thử thức uống Strawberry Sting của chúng tôi",
    "Nếm thử món Hot Pizza của chúng tôi",
    "Nếm thử món Chicken Salan của chúng tôi",
    "Nếm thử món Chicken biryani của chúng tôi",
    "Nếm thử món Hot Burger của chúng tôi",
  ];

  final List<String> price = [
    "\$10",
    "\$10",
    "\$10",
    "\$10",
    "\$10",
    "\$10",
    "\$10",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          // children: [
          children: List.generate(
            7,
            (index) =>
                //
                Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 250,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Container(
                        // alignment: Alignment.center,
                        child: Image.asset(
                          image[index],
                          height: 130,
                        ),
                      ),
                      Text(
                        title[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        descreption[index],
                        style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price[index],
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          )
                        ],
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ),
            //
          ),
        ),
      ),
    );
  }
}
