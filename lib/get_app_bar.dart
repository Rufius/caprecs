import 'package:flutter/material.dart';

AppBar getAppBar(BuildContext context) {
  return AppBar(
    leading: GestureDetector(
      child: const Icon(Icons.arrow_back),
      onTap: () => Navigator.pop(context),
    ),
    title: Image.asset('logo.png'),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0, // Removes default shadow // End of PreferredSize
    iconTheme: const IconThemeData(color: Colors.black), // End of TextTheme
  );
}
