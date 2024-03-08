import 'package:flutter/material.dart';
import 'package:login_register_ui/components/my_textfield.dart';
import 'package:login_register_ui/components/mybutton.dart';

import 'components/squretile.dart';

class Login extends StatelessWidget {

  //text editing controllers

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // user sign in method
  void signUserIn(){
    print('Sign in clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                  //logo
                 const SizedBox(height: 50,),
                const Icon(Icons.lock,size: 100,),

                //welcomenote
                const SizedBox(height: 50,),
                 Text('Welcome back you\'ve been missed',style: TextStyle(color: Colors.grey[700],fontSize: 16),),
                const SizedBox(height: 25,),
                //username
                 MyTextField(controller: usernameController, hintText: 'USER NAME', obsecureText: false,),
                //password
                const SizedBox(height: 10,),
                MyTextField(controller: passwordController, hintText: 'PASSWORD', obsecureText: true,),
                //forgot password
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password?',style: TextStyle(color: Colors.grey[600]),)
                    ],
                  ),
                ),
                //sign in button
                const SizedBox(height: 50,),
                 MyButton(onTap: signUserIn,),
                const SizedBox(height: 30,),
                //google apple login
                const Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquireTile(imagepath: 'lib/images/search.png',),
                  SizedBox(width: 10.0,),
                  SquireTile(imagepath: 'lib/images/apple.png',),
                ],),
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a Member?'),
                    SizedBox(width: 4,),
                    Text('Register Now !',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
