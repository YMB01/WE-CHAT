import 'package:flutter/material.dart';

class roundedButton extends StatelessWidget {
  const roundedButton({required this.onPressed, required this.color,required this.title });
    final VoidCallback onPressed;
    final Color color;
    final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        //.lightBlueAccent,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          //() {
            //Go to login screen.
            //Navigator.pushNamed(context, LoginScreen.id);
          //},
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title
          ),
        ),
      ),
    );
  }
}
