import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled7/module/second_screen.dart';

import '../shared/components/Default_Design.dart';

class ValidationScreen extends StatefulWidget {
  const ValidationScreen({Key? key}) : super(key: key);

  @override
  State<ValidationScreen> createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen>
{
  var  emailcontroller=TextEditingController();
  var passwordController=TextEditingController();
  var firstname=TextEditingController();
  var lastname=TextEditingController();
  bool Isvisible1=false;
  bool Isvisible2=false;
final _formkey=GlobalKey<FormState>();
var confirmPassword=TextEditingController();
 bool state =false;
  @override
  Widget build(BuildContext context) {
    return (
       Form(key: _formkey,
         child: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Text(
                     'Sign Up',
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 35.0,
                         fontWeight: FontWeight.w900),
                   ),
                 ),
                 SizedBox(
                   height: 30,
                 ),
                 Row(children:
                 [
                   Expanded(
                     child: defaultSmallFormField(
                       validator:(value)
                     {
                       if(value!.isEmpty )
                       {
                         return 'Please enter first name';
                       }
                       return null;
                     },
                       type:TextInputType.name , controller: firstname,
                       labelTxt:'First Name' ,

                       color: Colors.white
                     ),
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Expanded(
                     child: defaultSmallFormField(
                       validator:(value)
                       {
                         if(value!.isEmpty )
                         {
                           return 'Please enter the last name';
                         }
                         return null;
                       },
                       type:TextInputType.name , controller: lastname,
                       labelTxt:'Last Name' ,

                       color: Colors.white
                     ),
                   ),

                 ],)
                 ,
                 SizedBox(
                   height: 20.0,
                 ),
                 defaultSmallFormField(
                   validator:(value)
                   {
                     if(value!.isEmpty )
                     {
                       return 'Please enter email';
                     }
                     else if(!emailcontroller.text.contains('@gmail.com')  )
                       {
                         return 'please enter valid email';
                       }
                     return null;
                   },
                   type:TextInputType.emailAddress ,
                   controller: emailcontroller,
                   labelTxt:'Email' ,
                   color: Colors.white,

                 ),
                 SizedBox(height: 20,),
                 defaultSmallFormField(IsObscure: Isvisible1,
                   color: Colors.white,
                     suffixIcon:TextButton(
                         onPressed: ()
                 {
                   setState(()
                   {
                     Isvisible1=!Isvisible1;
                   }
                   );

                 }, child: Text('show',style: TextStyle(color: Color(0xffEE3A57)),)) ,
                   validator:(value)
                   {
                     if(value!.isEmpty )
                     {
                       return 'Please enter password';
                     }
                     return null;
                   },
                   type:TextInputType.visiblePassword ,
                   controller: passwordController,
                   labelTxt:'Password' ,


                 ),
                 SizedBox(height: 20,),
                 defaultSmallFormField(IsObscure: Isvisible2,

                   color: Colors.white,
                   suffixIcon:TextButton(
                       onPressed: ()
                       {
                         setState(()
                         {
                           Isvisible2=!Isvisible2;
                         }
                         );

                       }, child: Text('show',style: TextStyle(color: Color(0xffEE3A57)),)) ,
                   validator:(value)
                   {
                     if(value!.isEmpty  )
                     {
                       return 'Please confirm password';
                     }
                     else if(confirmPassword.text!=passwordController.text)
                       {
                        return 'please enter the right password';
                       }

                   },
                   type:TextInputType.visiblePassword , controller: confirmPassword,
                   labelTxt:'Confirm Password' ,

                 ),
                 SizedBox(height: 20,),
                 CheckboxListTile(
                     value: state, onChanged: ( value){
                   setState(() {
                     if(value!=null)
                       {
                         this.state=value;
                       }

                   });
                 },checkColor: Colors.white,
                     activeColor: Color(0xffEE3A57),
                     controlAffinity: ListTileControlAffinity.leading,
                     title: Text('I Agree with privacy and policy',
                       style: TextStyle(color: Colors.white),)


                 ),
                 ElevatedButton(onPressed: ()
                 {

                   if(_formkey.currentState!.validate() && state==true)
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (context)
                       {
                         return HelloScreen(firstname: firstname,lastname: lastname,Email: emailcontroller,);

                       })
                       );
                 }
                   else
                     {
                       Fluttertoast.showToast(msg: 'please check on privacy',toastLength: Toast.LENGTH_SHORT,
                           backgroundColor: Color(0xff25273E),fontSize: 15,textColor: Colors.white,gravity: ToastGravity.BOTTOM);
                     }



                 },style:ElevatedButton.styleFrom(primary: Color(0xffEE3A57),
                 onPrimary: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),

                   child:ButtonField() ),



               ],
             ),
           ),
         ),
       )
    );
  }
}
