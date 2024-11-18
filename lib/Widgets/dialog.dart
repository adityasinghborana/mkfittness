import 'package:flutter/material.dart';
import 'package:mkfitness/helper/functions.dart';

Future<void> dialogBuilder(BuildContext context, String title, String content) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),  // Use the title parameter here
        content: Container(
          width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 3,
          child: Text(content),  // Use the content parameter here
        ),
        actions: <Widget>[
          Center(
            child: InkWell(
              child: const Text(
                'Disable',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
              route.remove(context);
              },
            ),
          ),
        ],
      );
    },
  );
}