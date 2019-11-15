import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final String title;
  final String content;

  SettingsPage(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Text(content)),
    );
  }
}
