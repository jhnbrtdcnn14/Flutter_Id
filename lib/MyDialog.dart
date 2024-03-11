// MyDialog.dart
import 'package:flutter/material.dart';
import 'MyToast.dart'; // Adjust the import path as necessary

class MyDialog {
  static void showCustomDialog(BuildContext context,
      {String? toastMessageOnYes,
      String? path,
      String? title,
      String? content}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            '$title',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.amberAccent[700]),
          ),
          content: Text('$content'),
          actionsAlignment: MainAxisAlignment.center,
          backgroundColor: Colors.grey[100],
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'No',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                // Add a delay of 2 seconds before executing the navigation and showing the toast message
                const delayDuration = Duration(seconds: 3);
                if (toastMessageOnYes != null) {
                  showToast(toastMessageOnYes);
                }

                Future.delayed(delayDuration, () {
                  Navigator.pushNamed(context, '$path');
                });
              },
              child: Text(
                'Yes',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.amberAccent[700]),
              ),
            ),
          ],
        );
      },
    );
  }
}
