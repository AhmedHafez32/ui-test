import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key, required this.txController, required this.text,required this.icon});
  final TextEditingController txController;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txController,
      decoration: InputDecoration(
        filled: true,
        labelText: text,
        hintText: text,
        prefixIcon: Icon(icon),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
