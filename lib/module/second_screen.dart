import 'package:flutter/material.dart';

class HelloScreen extends StatelessWidget
{
  var firstname=TextEditingController();
  var lastname=TextEditingController();
  var Email=TextEditingController();

  HelloScreen({required this.firstname,required this.lastname,required this.Email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff25273E),
        appBar: AppBar(backgroundColor: Color(0xffEE3A57),
          title: Text('User Info',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold),),),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: Column(children:
            [
              Text('first name : ${firstname.text}',
                style: TextStyle(fontSize: 35,color: Colors.white),),
              Text('last name : ${lastname.text}',
                style: TextStyle(fontSize: 35,color: Colors.white),),
              Text('Email : ${Email.text}',
                style: TextStyle(fontSize: 30,color: Colors.white),),



            ],),
          ),
        )
    );
  }
}
