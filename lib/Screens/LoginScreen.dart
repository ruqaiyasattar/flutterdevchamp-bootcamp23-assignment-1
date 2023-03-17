import 'package:medicoz/customWidgets/CustomTextFeild.dart';
import 'package:medicoz/customWidgets/customButton.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController textFieldController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff08022A),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                  children:  [
                    const Padding(
                      padding:   EdgeInsets.only(top: 150.0),
                      child:   Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                     CustomTextFeild(
                       buttonText: 'User Name',
                       controller: textFieldController,
                       inputType: TextInputType.name,
                       boolVal: false,
                     ),
                    const SizedBox(
                      height: 30.0,
                    ),
                     CustomTextFeild(
                       buttonText: 'Enter password',
                       controller: textFieldController,
                       inputType: TextInputType.visiblePassword,
                       boolVal: true,
                     ),
                    const Padding(
                      padding:   EdgeInsets.only(top: 20.0),
                      child:   Text(
                        'Forget password?',
                        style: TextStyle(
                          color:   Color(0xffECBB7D),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width   : 400,
                height: 300,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    //topLeft: Radius.circular(50),
                    topRight: Radius.circular(180),
                    bottomLeft: Radius.circular(180),
                  ),
                  image:   DecorationImage(
                    image:  NetworkImage('https://cdn.vectorstock.com/i/preview-1x/25/72/black-halftone-rounded-dotted-lines-vector-39292572.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(
                                context,
                                '/medicine',
                                arguments: textFieldController.text,
                            );
                          },
                          child: const Padding(
                            padding:  EdgeInsets.only(right: 40.0, bottom: 60.0),
                            child:  CustomBotton(buttonText: 'Sign In',),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
