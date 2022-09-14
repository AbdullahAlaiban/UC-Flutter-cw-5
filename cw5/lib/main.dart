import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
var player1 = 1;

var player2 = 2;

void func(){
  player1 = Random().nextInt(3) + 1;
  player2 = Random().nextInt(3) + 1;

setState(() {
  
});
}



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 198, 171),
        appBar: AppBar(backgroundColor: Colors.orange, title: Text('Rock Paper'),),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/i_$player1.png' , 
                width: 100,
                height: 100,),
                Container(width: 50,),
                 Image.asset('assets/i_$player2.png' , 
                width: 100,
                height: 100,) , 
              ],
            
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
            Text('Player 1') , 
            Container(width: 95,),
            Text('Player 2')
             ],
            ),
            Container(height: 50,),
            Container(
              width: 150, height: 50,
              child: ElevatedButton(onPressed: (){
                func();
              }, child: Text('Play') , 
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange))
              ,),
            )
          ],
          
        )),

        
      ),
    );
  }
}

