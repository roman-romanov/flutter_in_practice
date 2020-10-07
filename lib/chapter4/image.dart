import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Image.asset',style: TextStyle(fontSize: 40)),
          Expanded(
                      child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/vse-zelenye.jpg'),
            ),
          ),
          Text('Image.network',style: TextStyle(fontSize: 40)),
          Expanded(
                      child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network('https://kaifolog.ru/uploads/posts/2018-05/1526699438_034.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
