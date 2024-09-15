

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.indigo,
        child: Center(child: Text("Hello Dosto",style:TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold
        ),)),
      ),
    );
  }
}