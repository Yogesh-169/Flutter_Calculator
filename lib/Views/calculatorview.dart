import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Calculatorview extends StatefulWidget {
  const Calculatorview({super.key});

  @override
  State<Calculatorview> createState() => _CalculatorviewState();
}

class _CalculatorviewState extends State<Calculatorview> {

  int x=0,y=0;
  num z=0;

  final displayOneController=TextEditingController();
  final displayTwoController=TextEditingController();

  void initState()
  {
   super.initState();
   displayOneController.text=x.toString();
   displayTwoController.text=y.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        children: [
          CalculatorDisplay(hint:"Enter First Number",controller: displayOneController),
          SizedBox(
            height: 30,
          ),
          CalculatorDisplay(hint:"Enter Second Number",controller:displayTwoController),
          SizedBox(
            height: 30,
          ),
            Text(z.toString(),style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60
          ),),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    z=num.tryParse(displayOneController.text)! + num.tryParse(displayTwoController.text)!;
                  });
                },
                child:const Icon(CupertinoIcons.add) ,
              ),
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    z=num.tryParse(displayOneController.text)! - num.tryParse(displayTwoController.text)!;
                  });
                },
                child:const Icon(CupertinoIcons.minus) ,
              ),
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    z=num.tryParse(displayOneController.text)! * num.tryParse(displayTwoController.text)!;
                  });
                },
                child:const Icon(CupertinoIcons.multiply) ,
              ),
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    z=num.tryParse(displayOneController.text)! / num.tryParse(displayTwoController.text)!;
                  });
                },
                child:const Icon(CupertinoIcons.divide) ,
              ),
            ],
          ),
          const SizedBox(height: 10),
          FloatingActionButton(child:Text("Clear"),onPressed:(){
            setState(() {
              x=0;
              y=0;
              z=0;
              displayTwoController.clear();
              displayOneController.clear();
            });

          })
        ],
      ),
    );
  }
}

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({
    super.key,
    this.hint="Enter A Number",
    required this.controller
  });
  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.black,
        )

      ),
    );
  }
}
