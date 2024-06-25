import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Travel',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World Travel App"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Builder(builder: (context) => Center(
          child: Column(
            children: [
              Text(
                "Hello World Travel",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[300],
                ),
              ),
              const Text(
                'Discover the World',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image.asset(
                      'lib/image/rpg.png',
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => ContactUs(context),
                child: Text('Contact Us'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
void ContactUs(BuildContext context){
  showDialog(context: context, builder:(BuildContext Context){
    return AlertDialog(
      title:Text('ContactUs'),
      content: Text('Mail us at Hello@world.com'),
      actions:<Widget> [
        ElevatedButton(onPressed: ()=>Navigator.of(context).pop(), child:Text('ContactUs') ,)
      ],
    );
  } );
}