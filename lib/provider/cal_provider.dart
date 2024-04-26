
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
  final compController = TextEditingController();
  
  setValue(String value) {
    String Str = compController.text;



    switch (value) {
      case "C" :
        compController.clear();
        break;
      case "AC" :
        compController.text = Str.substring(0, Str.length -1);
        break;
      

      case "*" :
       compController.text += "*";
       break;
      
      case "=" :
       compute();
       break;
      default:
       compController.text += value;
       

    }
}

  compute() {
  String text = compController.text;
  compController.text = text.interpret().toString();

@override
  void dispose() {
    super.dispose();
    compController.dispose();
  } 

  }



}

