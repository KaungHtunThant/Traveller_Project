import 'package:flutter/material.dart';
import 'package:tourist_guide/models/category.dart';
class CategoryProvider with ChangeNotifier {
  final List<Category> CategoryList = [
    Category(
        id: 'ygn',
        title: 'Yangon',
        imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg'
    ),
    // Category(
    //     id: 'c2',
    //     title: 'Test2',
    //     imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg'
    // ),
    // Category(
    //     id: 'c3',
    //     title: 'Test3',
    //     imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg'
    // ),
    // Category(
    //     id: 'c4',
    //     title: 'Test4',
    //     imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg'
    // ),
    // Category(
    //     id: 'c5',
    //     title: 'Test5',
    //     imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg'
    // ),
    // Category(
    //     id: 'c6',
    //     title: 'Test6',
    //     imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg'
    // ),
    // Category(
    //     id: 'c7',
    //     title: 'Test6',
    //     imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg'
    // ),

  ];
}
