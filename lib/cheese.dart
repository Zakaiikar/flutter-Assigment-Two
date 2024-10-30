import 'package:flutter/material.dart';

class Cheese extends StatelessWidget {
  const Cheese({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                'Cheese pizza',
                style: TextStyle(fontSize: 20.0),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '3');
                },
                child: Image.asset(
                  'image/twi.png',
                  fit: BoxFit.contain,
                  height: 30,
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '4');
                },
                child: Image.asset(
                  'image/face.png',
                  fit: BoxFit.contain,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 40), 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), 
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10, 
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(color: Colors.white),
                        backgroundColor: Colors.white,
                        
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                      ),
                      child: Text(
                        'V Pizza',
                        style: TextStyle(fontSize: 15 , color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '0');
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(color: Colors.white),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'Ch pizza',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '1');
                      },
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(color: Colors.white),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'Fries',
                        style: TextStyle(fontSize: 15, color: Colors.black, ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '2');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.05),
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'image/cheese.jpg',
                        fit: BoxFit.contain, 
                        width: 390, 
                        height: 450 
                      ),
                      SizedBox(height: 20),
                    
                    
                      
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}