import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final String buttonText;
  const CustomBotton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color:  const Color(0xffECBB7D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2.0,
      child: SizedBox(
        width: 150,
        height: 50,
        child:  Center(
          child:  Text(
            buttonText.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Courgette-Regular',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
