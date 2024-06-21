import 'package:flutter/material.dart';

class TextPost extends StatelessWidget {
  double height = 0;
  String data;

  TextPost({Key? key, required this.height, this.data = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data),
        ),
      ),
    );
  }
}
