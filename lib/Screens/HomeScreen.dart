import 'package:flutter/material.dart';
import 'package:medicoz/customWidgets/customButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff08022A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  'asset/images/splashmed.png',
                  height: 400,
                  width: 400,
                ),
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
                    const Padding(
                      padding: EdgeInsets.only(top: 25.0, left: 25.0),
                      child: Text(
                        'Welcome to Medicoz',
                        style:  TextStyle(
                          fontFamily: 'Courgette-Regular',
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Padding(
                            padding:  EdgeInsets.only(right: 40.0, bottom: 60.0),
                            child:  CustomBotton(buttonText: 'Start',),
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
