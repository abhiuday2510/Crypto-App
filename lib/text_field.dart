import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
          //helperText: 'keep this short',
          filled: true,
          fillColor: Colors.grey.shade100,
          //focusColor: Colors.grey,
          enabledBorder: OutlineInputBorder(
            //borderSide: BorderSide.none,
            borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            //borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey.shade400,
            size: 38,
          ),
          hintText: 'Search coins to invest...',
          hintStyle: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: 0.5)),
    );
  }
}
