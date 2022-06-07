library confirmationbox;

import 'package:flutter/material.dart';

Function? ConfirmationBox({
  required BuildContext context,
  Function? confirmFunction,
  required String title,
  required String body,
  bool no = true,
  String yesText = "Yes",
  String noText = "No",
}) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title.toString()),
      content: Text(body.toString()),
      actions: <Widget>[
        no == true
            ? TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  noText,
                  style: const TextStyle(color: Colors.black),
                ),
              )
            : Container(),
        TextButton(
          onPressed: confirmFunction as void Function()?,
          child: Text(
            yesText,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    ),
  );
}
