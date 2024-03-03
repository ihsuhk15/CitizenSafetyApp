import 'package:flutter/material.dart';

class sqtile extends StatelessWidget {
  final String imagePath;
  const sqtile({super.key, required this.imagePath});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.white), 
      borderRadius: BorderRadius.circular(100),
      color: Colors.grey[200]),
      child: Image.asset(imagePath, height: 40,),
    );
  }
}
