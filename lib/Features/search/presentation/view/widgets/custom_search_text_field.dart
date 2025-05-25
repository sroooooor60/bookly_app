import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'search',
        suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        enabledBorder: buildOutLinInputBorder(),
        focusedBorder: buildOutLinInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutLinInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
