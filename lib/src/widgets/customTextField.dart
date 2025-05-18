import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color iconColor;
  final bool isPassword;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.iconColor,
    this.isPassword = false,
    required this.controller,
    }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: isPassword ? TextInputType.visiblePassword : TextInputType.text,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(icon,color: iconColor,),
        labelText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red),
        )
      ), 
    );
  }
}