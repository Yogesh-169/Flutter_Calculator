

import 'package:flutter/material.dart';
import 'package:prj1/Views/calculatorview.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Container(
          child: Calculatorview(),
        ),
      ),
    );
  }
}