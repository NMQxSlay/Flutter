import 'package:flutter/material.dart';

class FoodItem {
  String image;
  String title;
  String description;
  String price;

  FoodItem({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  List<FoodItem> foodItems = [];
}

class PopularItemsWidget extends StatefulWidget {
  @override
  _PopularItemsWidgetState createState() => _PopularItemsWidgetState();
}

class _PopularItemsWidgetState extends State<PopularItemsWidget> {
  static List<FoodItem> foodItems = [
    FoodItem(
      image: 'images/burger.png',
      title: "Hamburger",
      description: "Nếm thử món Hot Burger của chúng tôi",
      price: "30000đ",
    ),
    FoodItem(
      image: 'images/pepsi.jpg',
      title: "Pepsi",
      description: "Nếm uống Pepsi của chúng tôi",
      price: "10000đ",
    ),
    FoodItem(
      image: 'images/drink.png',
      title: "Sting",
      description: "Uống thử thức uống Strawberry Sting của chúng tôi",
      price: "7000đ",
    ),
    FoodItem(
      image: 'images/pizza.png',
      title: "Pizza",
      description: "Nếm thử món Hot Pizza của chúng tôi",
      price: "100000đ",
    ),
    FoodItem(
      image: 'images/salan.png',
      title: "Gà hầm ",
      description: "Nếm thử món Gà hầm của chúng tôi",
      price: "200000đ",
    ),
    FoodItem(
      image: 'images/bundau.jpg',
      title: "Bún đậu",
      description: "Nếm thử món Bún đậu của chúng tôi",
      price: "100000đ",
    ),
    FoodItem(
      image: 'images/pho.png',
      title: "Phở bò",
      description: "Nếm thử món Phở bò của chúng tôi",
      price: "200000đ",
    ),
    FoodItem(
      image: 'images/nem.jpg',
      title: "Nem rán",
      description: "Nếm thử món Nem rán của chúng tôi",
      price: "100000đ",
    ),
    FoodItem(
      image: 'images/banhmi.jpg',
      title: "Bánh mì",
      description: "Nếm thử món Bánh mì của chúng tôi",
      price: "100000đ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: List.generate(
            foodItems.length,
            (index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {},
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
                      children: [
                        SizedBox(height: 8),
                        Container(
                          child: Image.asset(
                            foodItems[index].image,
                            height: 130,
                          ),
                        ),
                        Text(
                          foodItems[index].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          foodItems[index].description,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              foodItems[index].price,
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
            ),
          ),
        ),
      ),
    );
  }
}
