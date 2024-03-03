import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final Function()? onTap;
  const mybutton({super.key, required this.onTap});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text("Sign In", style: TextStyle(
            color: Colors.white, 
            fontSize: 16, 
            fontWeight: FontWeight.bold),),
        )
      ),
    );
  }
}