import 'package:flutter/material.dart';

class mytextfield extends StatelessWidget {
  final controller;
  final hintText;
  final obscureText;
  
  const mytextfield (
    {super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox( height:60,
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey,),borderRadius: BorderRadius.circular(15),),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade400),
            contentPadding: EdgeInsets.all(15)
          )
        ),
      )
    );
  }
}