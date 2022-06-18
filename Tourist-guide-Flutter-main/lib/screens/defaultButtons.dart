import 'package:flutter/material.dart';
import 'appcolors.dart';

class DefaultButtons extends StatelessWidget {
  double width;
  final String text;
  bool isLarge;

  DefaultButtons({this.width, this.isLarge = false, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: isLarge == true ? width : width = 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: isLarge == true
                ? Text(
                    text.toString(),
                    style: const TextStyle(color: Colors.white),
                  )
                : const Text('To Home', style: const TextStyle(color: Colors.white)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
          ),
          Image.asset('assets/button-one.png')
        ],
      ),
    );
  }
}

class DefaultButtons2 extends StatelessWidget {
  double width;
  final String text;
  bool isLarge;

  DefaultButtons2({this.width, this.isLarge = false, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: isLarge == true ? width : width = 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.invColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: isLarge == true
                ? Text(
              text.toString(),
              style: const TextStyle(color: Colors.white),
            )
                : const Text('', style: const TextStyle(color: Colors.white)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
          ),
          // Image.asset('assets/button-one.png')
        ],
      ),
    );
  }
}
