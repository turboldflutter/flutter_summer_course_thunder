import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 50,
      child: TextField(
        onSubmitted: (String value) {},
        maxLines: 1,
        style: TextStyle(
          color: Color(0xFFE86B02),
          fontSize: 18,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.person),
          
        ),
      ),
    );
  }
}
