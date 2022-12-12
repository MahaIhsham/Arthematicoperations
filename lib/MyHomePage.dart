
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 String multi(){
    int a = -5, b = _count ;

 String  result =(a*b).toString();
    return result;
  }
 String sub(){
   int a = 4, b = _count ;

   String  result2 =(a-b).toString();
   return result2;
 }

String divide() {
  int a = 6,
      b = _count;
  String result1 = (a / b).toString();
  return result1;
}

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
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        
        body: Center(

          child: Column(

            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                height:   Adaptive.h(11),
                width:80.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),

                ),
                child:
                Column(
                  children: [

                    SizedBox(height: Adaptive.h(2),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(
                          child: Text("-5"),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                          child: Text("*"),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                          child: Text('${_count}'),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:[
                    Container(

                      height: Adaptive.h(5),
                      width: 30.w,
                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.purple),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(multi(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                    )
]),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height:   Adaptive.h(11),
                width:80.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),

                ),
                child:
                Column(
                  children: [

                    SizedBox(height: Adaptive.h(2),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(
                          child: Text("4",),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                          child: Text("-"),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                          child: Text('${_count}'),
                        )
                      ],
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Container(

                            height: Adaptive.h(5),
                            width: 30.w,
                            alignment: Alignment.center,

                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.purple),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Text(sub(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                          )
                        ]),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height:   Adaptive.h(11),
                width:80.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),

                ),
                child:
                Column(
                  children: [

                    SizedBox(height: Adaptive.h(2),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Container(
                          child: Text("6"),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                          child: Text("/"),
                        ),
                        SizedBox(width: 1.w,),
                        Container(
                          child: Text('${_count}'),
                        )
                      ],
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Container(

                            height: Adaptive.h(5),
                            width: 30.w,
                            alignment: Alignment.center,

                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.purple),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Text(divide(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                          )
                        ]),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height:   Adaptive.h(11),
                width:80.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),),
                child:
              Row(


                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 5),
                    height: Adaptive.h(10),
                    width: 15.w,
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
                    width: 20.w,
                  ),
                  Container(
                    height: Adaptive.h(10),
                    width: 5.w,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, top: 5),
                    child:
                    Text("${_count}", style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),),),
                  SizedBox(
                    width: 17.w,
                  ),
                  Container(
                    height: Adaptive.h(10),
                    width: 15.w,
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

