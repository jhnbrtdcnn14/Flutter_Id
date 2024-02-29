import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String content;
  final VoidCallback onPressed;

  const MyButton({
    Key? key,
    required this.content,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.5,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: Colors.amber,
        child: Text(content),
      ),
    );
  }
}
