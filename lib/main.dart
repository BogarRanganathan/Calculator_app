import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Calc(),
));
class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BCD1),
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          Expanded(
            child:Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.bottomRight,
              child: Text("$Result", style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
              ),
      ),


          ),
          new Divider(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Custom("9"),
              Custom("8"),
              Custom("7"),
              Custom1("+"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Custom("6"),
              Custom("5"),
              Custom("4"),
              Custom1("-"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Custom("3"),
              Custom("2"),
              Custom("1"),
              Custom1("*"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Custom2("C"),
              Custom("0"),
              Custom1("="),
              Custom1("/"),
            ],
          ),
        ],
      ),
    );
  }

  Widget Custom(String Value) {
    return Container(
      padding: EdgeInsets.all(10),
      child:SizedBox(
      height: 65,
      width: 65,
      child:  RaisedButton(
        textColor: Colors.white,
        color: Colors.black,
        child:Text("$Value", style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        ),
        onPressed: () => click(Value),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      ),
      ),
    );
  }

  Widget Custom1(String Value) {
    return Container(
      padding: EdgeInsets.all(10),
      child:SizedBox(
        height: 65,
        width: 65,
        child:  RaisedButton(
          textColor: Colors.black,
          color: Colors.white,
          child: Text("$Value", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
          onPressed: () => click(Value),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
  Widget Custom2(String Value) {
    return Container(
      padding: EdgeInsets.all(10),
      child:SizedBox(
        height: 65,
        width: 65,
        child:  RaisedButton(
          textColor: Colors.white,
          color: Colors.grey,
          child: Text("$Value", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
          onPressed: () => click(Value),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }

  String Result="";
  String txt="";
double num1=0;
double  num2=0;
String Operand="";

  void click(String btntxt){
    if(btntxt=="C"){
      txt="";
      Result="";
      btntxt="";
      num1=0;
      num2=0;
    }

    else if(btntxt=="+"|| btntxt=="-"|| btntxt=="*"|| btntxt=="/"){
      num1=double.parse(txt);
      Result="";
      Operand=btntxt;
    }
    else if(btntxt=="="){
      num2=double.parse(txt);
      if(Operand=="+"){
        Result=(num1+num2).toString();
      }
       if(Operand=="-"){
        Result=(num1-num2).toString();
      }
       if(Operand=="*"){
        Result=(num1*num2).toString();
      }
      if(Operand=="/"){
        Result=(num1/num2).toString();
      }

    }
    else{

      Result=int.parse(txt+btntxt).toString();
    }

  setState(() {
    txt=Result;
  });
  }
}


