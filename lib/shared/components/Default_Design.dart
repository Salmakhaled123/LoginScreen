import 'package:flutter/material.dart';

Widget defaultSmallFormField({double radius=25,
required String labelTxt,
  required TextEditingController controller,
required String? Function(String?)? validator,
required TextInputType type,
  Widget ? suffixIcon,
 bool IsObscure=false,
  void Function()? ontap,
  Color ? color})=>TextFormField(onTap:ontap ,style: TextStyle(color: color),
  controller: controller,
  keyboardType: type,
  validator: validator,
  obscureText: IsObscure,
  autovalidateMode: AutovalidateMode.onUserInteraction,
  decoration: InputDecoration(suffixIcon: suffixIcon,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide:
        BorderSide(color: Color(0xffEE3A57), width: 1.0,)),
    labelText: labelTxt,
    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
);

Widget ButtonField()=>Center(
  child:   Container(child: Text('Sign up',
   ),




  ));

