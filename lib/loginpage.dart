import 'package:citisafe/components/button.dart';
import 'package:citisafe/components/sqtile.dart';
import 'package:citisafe/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginpage extends StatelessWidget {
  loginpage({super.key});
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  void signuserin (){}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Hello,", style: TextStyle(color: Colors.grey.shade800, fontSize: 20, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Welcome Back!", style: TextStyle(color: Colors.grey.shade800, fontSize: 20, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),

              SizedBox(height: 40,),

              mytextfield(
                controller: usernamecontroller,
                obscureText: false,
                hintText: "Username",
              ),

              SizedBox(height: 5,),

              mytextfield(
                controller: passwordcontroller,
                obscureText: true,
                hintText: "Password",
              ),

              SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?", style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              mybutton(onTap: signuserin,),

              SizedBox(height: 35,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 0.5, color: Colors.grey.shade400,),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Or Continue With", style: TextStyle(color: Colors.grey.shade700),),
                    ),
                    Expanded(child: Divider(thickness: 0.5, color: Colors.grey.shade400,),),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Row
              (mainAxisAlignment: MainAxisAlignment.center, children: [
                sqtile(imagePath: 'assets/google.png'),
                SizedBox(width : 10,),
                sqtile(imagePath: 'assets/apple.png'),
              ],),

              SizedBox(height: 30,),

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Not a Member?', style: TextStyle(color: Colors.grey[700])),
                SizedBox(width: 4,),
                Text('Register Now!', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
              ],)

            ],),
        ),
      ),
    );
  }
}