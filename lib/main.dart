import 'package:flutter/material.dart';

import 'module/validation_Screen.dart';

void main()
{
  runApp(DesignValidation());
}
class DesignValidation extends StatelessWidget {
  const DesignValidation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold( backgroundColor: Color(0xff25273E), appBar: AppBar(
          backgroundColor: Color(0xff25273E),
          elevation: 0.0,
        ),
        body: ValidationScreen(),
 ));
  }
}
