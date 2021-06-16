import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class Utils {

  showBasicFlushBar({
    required String content,
    Icon icon = const Icon(
      Icons.info_outline_rounded,
      color: Colors.green,
    ),
  }) {
    Flushbar(
      animationDuration: Duration(milliseconds: 400),
      boxShadows: [
        BoxShadow(
          color: Colors.black54,
          offset: Offset(5, 5),
          blurRadius: 6,
        )
      ],
      duration: Duration(seconds: 2),
      isDismissible: false,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.circular(10),
      flushbarStyle: FlushbarStyle.FLOATING,
      icon: icon,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      messageText: Text(
        content.toUpperCase(),
        style: Theme.of(navigatorKey.currentState!.overlay!.context)
            .textTheme
            .bodyText1,
      ),
    )..show(navigatorKey.currentState!.overlay!.context);
  }
}
