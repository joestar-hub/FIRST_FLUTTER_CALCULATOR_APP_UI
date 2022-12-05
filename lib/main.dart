import 'package:flutter/material.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Calculator(),

    );
  }
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();

}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt,Color btncolor,Color txtcolor){
return Container(
  child: MaterialButton (
    onPressed:(){
//TODO ADD FUNCTION FOR ADD BUT PRESSED
    },
    child:Text(btntxt,
    style:TextStyle(
      fontSize: 35,
      color:txtcolor,
    ),
    ),
    shape:CircleBorder(),
    color:btncolor,
    padding:EdgeInsets.all(20),

  )
);


  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:Text('Elijah Calculator@Joestar-hub'),
        backgroundColor: Colors.black,),
      body:Padding(
        padding:EdgeInsets.symmetric(horizontal: 5),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            //calculator display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  Padding(
                    padding:EdgeInsets.all(10.0),
                    child: Text('0',
                    textAlign:TextAlign.left,

                      style:TextStyle(color: Colors.amberAccent,fontSize: 100),


                    ),
                  ),
                ],
              )
              ,),              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  calcbutton('AC', Colors.deepPurpleAccent,Colors.white),
                  calcbutton('+/-', Colors.grey,Colors.black),
                  calcbutton('%', Colors.grey,Colors.white),
                  calcbutton('/', Colors.pink,Colors.white),
                ]
            ),
            SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  calcbutton('7', Colors.grey,Colors.black),
                  calcbutton('8', Colors.grey,Colors.black),
                  calcbutton('9', Colors.grey,Colors.white),
                  calcbutton('x', Colors.pinkAccent,Colors.white),
                ]
            ),
            SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  calcbutton('4', Colors.grey,Colors.black),
                  calcbutton('5', Colors.grey,Colors.black),
                  calcbutton('6', Colors.grey,Colors.white),
                  calcbutton('-', Colors.pink,Colors.white),
                ]
            ),
            SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  calcbutton('1', Colors.grey,Colors.black),
                  calcbutton('2', Colors.grey,Colors.black),
                  calcbutton('3', Colors.grey,Colors.white),
                  calcbutton('+', Colors.pink,Colors.white),
                ]
            ), SizedBox(height: 10,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  calcbutton('0', Colors.grey,Colors.black),
                  calcbutton('=', Colors.grey,Colors.black),
                  calcbutton('.', Colors.grey,Colors.white),
                  calcbutton('CE', Colors.pink,Colors.white),
                ]
            ),
            SizedBox(height: 10,),
            SizedBox(height: 10,),
          ]
        )
      ),
    );
  }
}

