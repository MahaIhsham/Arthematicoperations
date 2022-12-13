import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:incrementproject/OperationComponent.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int _count = 0;

  void _incrementCount(){
    setState((){
      _count++;


    });
  }
  void _decrementCount(){
    setState((){
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType)
    {
      return
           Scaffold(
          resizeToAvoidBottomInset: false,

        body: Center(
          child: Column(
            children: <Widget>[

              SizedBox(height: 30.0,),
              OperationComponent(firstValue: -5,secondValue: _count,operation: "*",),
              SizedBox(height: 30.0,),
              OperationComponent(firstValue: 4,secondValue:_count,operation: "-",),
              SizedBox(height: 30.0,),
              OperationComponent(firstValue: 6,secondValue:_count,operation: "/",),
              SizedBox(height: 30.0,),
              Container(
                height:  80,
                width:320,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),),
                child:
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 5),
                    height: 50,
                    width: 60,
                    alignment: Alignment.center,
                    child:
                    RaisedButton(
                        color: Colors.pink.shade100,
                        padding: EdgeInsets.only(right: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.pink.shade100),
                        ),
                        child: Icon(Icons.add, size: 20, color: Colors.purple,),
                        onPressed: _incrementCount),
                  ),
                  SizedBox(
                    width:60,
                  ),
                  Container(
                    height:50,
                    width: 50,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, top: 5),
                    child:
                    Text("${_count}", style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),),),
                  SizedBox(
                    width: 55,
                  ),
                  Container(
                    height: 50,
                    width: 60,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, top: 5),
                    child:
                    RaisedButton(
                        color: Colors.pink.shade100,
                        padding: EdgeInsets.only(right: 1),
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.pink.shade100),
                        ),
                        child: Icon(
                          Icons.remove, size: 20, color: Colors.purple,),
                        onPressed: _decrementCount),
                  ),

                ],
              ),

              ),
            ],
          ),
        ),
    );

    }
    );
  }
}



