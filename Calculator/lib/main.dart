import 'package:flutter/material.dart';
void main(){
  runApp(Calculator());
}
class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}
class SimpleCalculator extends StatefulWidget {
  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Calculator'),),
      body: Column(children: [
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Text('0',style: TextStyle(fontSize: 38),),
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Text('0',style: TextStyle(fontSize: 48),),
        ),
        Expanded(child: Divider()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .75,
              child: Table(
                children: [
                  TableRow(
                    children: [Container(
                       height: MediaQuery.of(context).size.width * 0.1,
                       color: Colors.deepOrange,
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: BorderSide(color: Colors.white,width: 1,style: BorderStyle.solid),
                          ),
                          padding: EdgeInsets.all(16),
                          onPressed: onPressed,
                          child: Text('C',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                      ),
                    ),],
                  ),
                ],
              ),
            ),
          ],
        )
      ],),
    );
  }
}
