import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String uid;

  ProfilePage(this.uid);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$uid 的资料"),
      ),
    );
  }
}
