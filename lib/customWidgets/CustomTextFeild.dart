import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String buttonText;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool boolVal;

  const CustomTextFeild({
    Key? key,
    required this.buttonText,
    required this.controller,
    required this.inputType,
    required this.boolVal,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: 300,
        height: 60,
        child:  Center(
          child:  TextField(
            keyboardType: inputType,
            obscureText: boolVal,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              hintText: buttonText,
              hintStyle: TextStyle(
                fontFamily: 'Courgette-Regular',
                color: Colors.grey[400],
              ),
            ),
            style: const TextStyle(
              fontFamily: 'Courgette-Regular',
              color: Colors.black,
            ),
            controller: controller,
          ),
        ),
      ),
    );
  }
}


