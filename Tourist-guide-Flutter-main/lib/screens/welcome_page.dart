// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'appcubit_cubit.dart';
import 'defaultButtons.dart';
import 'ApplargeTextstyle.dart';
import 'textwidget.dart';
import 'categories_trips_screen.dart';
// import 'appcubit_cubit.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ['welcom1.jpg', 'welcom2.jpg', 'welcom3.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: images.length,
      itemBuilder: ((context, index) => Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/" + images[index]),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ApplargeText(text: 'TRAVELLERS', color: Colors.white),
                      AppText(
                        text: 'Welcome to Yangon ',
                        size: 20,
                        color: Colors.white54,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      scrolldown(index),
                      // Container(
                      //   height: 30,
                      //   width: 100,
                      //   child: AppText(
                      //     color: Colors.white,
                      //     text:
                      //         'Scroll Down to Continue.',
                      //     size: 12,
                      //   ),
                      // ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<AppcubitCubit>(context).getDataa();
                          // Navigator.push(
                          //   context,
                          //   // MaterialPageRoute(builder: (_) => CategryTripesScreen(id, title)),
                          //   MaterialPageRoute(builder: (_) => CategryTripesScreen('ygn', 'Yangon')),
                          // );
                        },
                        // child: Container(width: 180, child: DefaultButtons()),
                        child: dbutton(index),
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(
                        3,
                        (indexdots) => Container(
                              margin: EdgeInsets.only(bottom: 2),
                              height: index == indexdots ? 25 : 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: index == indexdots
                                      ? Colors.white
                                      : Colors.white60),
                            )),
                  )
                ],
              ),
            ),
          )),
    ));
  }
}

Widget dbutton(index){
  if(index == 2){
    return Container(width: 180, child: DefaultButtons());
  }
  else{
    return Container(width: 180, child: DefaultButtons2());
  };
}

Widget scrolldown(index){
  if(index != 2){
    return Container(
      margin: EdgeInsets.only(left: 2),
      height: 30,
      width: 200,
      child: AppText(
        color: Colors.white,
        text:
        'Scroll Down to Continue.',
        size: 12,
      ),
    );
  }
  else{
    return Container(
      height: 10,
      width: 100,
      child: AppText(
        color: Colors.white,
        text:
        '',
        size: 12,
      ),
    );
  }
}