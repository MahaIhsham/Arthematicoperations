import 'package:flutter/material.dart';


class OperationComponent extends StatefulWidget{
  OperationComponent({super.key, required this.firstValue,this.secondValue, required this.operation,});
  final int firstValue;
  int? secondValue;
  final String operation;
  @override
  State<OperationComponent> createState() => OperationComponentState();

}

class OperationComponentState extends State<OperationComponent> {

  String result(){
    String result="";
    switch(widget.operation){
      case "/":
        result = (widget.firstValue / widget.secondValue!).toString();
        break;
      case "*":
        result = (widget.firstValue * widget.secondValue!).toString();
        break;
      case "-":
        result = (widget.firstValue - widget.secondValue!).toString();
        break;
    }

    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),),
      child: Column(
        children: [
          SizedBox(height: 8.0,),
          Text(widget.firstValue.toString()+widget.operation.toString()+widget.secondValue.toString()),
          SizedBox(height: 5.0,),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 130.0,
              height: 42.0,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple
                  ,width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Text(
                result() ,
                textAlign: TextAlign.center,style: TextStyle(
                fontWeight: FontWeight.w400
              ),
              ),
            ),
          )
        ],
      ),
    );
  }

}