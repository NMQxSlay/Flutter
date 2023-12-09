import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Minh Quang - 2121050844')),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.deepOrangeAccent,
              ),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                    'assets/avtfb.jpg'), // Sử dụng đúng đường dẫn tới hình ảnh
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 140,
                width: double.infinity,
                child: Card(
                  color: Colors.amber,
                  elevation: 5,
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'consectetur adipisicing elit',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Photos',
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                '5,000',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Followers',
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                '5,000',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Favorites',
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                '5,000',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
