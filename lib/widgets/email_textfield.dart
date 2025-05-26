// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EmailTextfield extends StatelessWidget {
  const EmailTextfield({
    super.key,
    required this.emailController,
  });
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Email Address',
        hintStyle: TextStyle(
          color: Colors.grey,
          
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xFFD9D9D9),
            width: 2
          )
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xFFD9D9D9),
            width: 2
          )
        )
      ),
    );
  }
}
