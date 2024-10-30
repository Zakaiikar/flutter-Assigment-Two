// import 'package:flutter/material.dart';

// class Facebook extends StatelessWidget {
//   const Facebook({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get the screen size
//     final screenSize = MediaQuery.of(context).size;

//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey[900],
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Row(
//             children: [
//               Text(
//                 'Wow Pizza',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               Spacer(),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '3');
//                 },
//                 child: Image.asset(
//                   'image/twi.png',
//                   fit: BoxFit.contain,
//                   height: 30,
//                 ),
//               ),
//               SizedBox(width: 20),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '4');
//                 },
//                 child: Image.asset(
//                   'image/face.png',
//                   fit: BoxFit.contain,
//                   height: 30,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: SafeArea(
//           child: Column(
//             children: [
//               SizedBox(height: screenSize.height * 0.05), // 5% of screen height
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding
//                 child: Wrap(
//                   alignment: WrapAlignment.center,
//                   spacing: 10,
//                   runSpacing: 10, // Spacing between the rows
//                   children: [
//                     OutlinedButton(
//                       style: OutlinedButton.styleFrom(
//                         shape: StadiumBorder(),
//                         side: BorderSide(color: Colors.white),
//                         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Add padding inside the button
//                       ),
//                       child: Text(
//                         'Vegetable Pizza',
//                         style: TextStyle(fontSize: screenSize.height * 0.025, color: Colors.white),
//                       ),
//                       onPressed: () {
//                         Navigator.pushNamed(context, '0');
//                       },
//                     ),
//                     OutlinedButton(
//                       style: OutlinedButton.styleFrom(
//                         shape: StadiumBorder(),
//                         side: BorderSide(color: Colors.white),
//                         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                       ),
//                       child: Text(
//                         'Pizza',
//                         style: TextStyle(fontSize: screenSize.height * 0.025, color: Colors.white),
//                       ),
//                       onPressed: () {
//                         Navigator.pushNamed(context, '1');
//                       },
//                     ),
//                     OutlinedButton(
//                       style: OutlinedButton.styleFrom(
//                         shape: StadiumBorder(),
//                         side: BorderSide(color: Colors.white),
//                         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                       ),
//                       child: Text(
//                         'Cheese Pizza',
//                         style: TextStyle(fontSize: screenSize.height * 0.025, color: Colors.white),
//                       ),
//                       onPressed: () {
//                         Navigator.pushNamed(context, '2');
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: screenSize.height * 0.05),
//               Expanded(
//                 child: Center(
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         'image/chips.jpg',
//                         fit: BoxFit.contain, // Use BoxFit.contain to show the full image
//                         width: screenSize.width * 0.9, // Dynamic image width
//                         height: screenSize.height * 0.4, // Dynamic image height
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         'I am the pizza assistant. What can I help you with?',
//                         style: TextStyle(fontSize: screenSize.height * 0.03, color: Colors.white),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


void main() => runApp(Twitter());


class Twitter extends StatelessWidget {
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: MyWeb(),);
  }
}


class MyWeb extends StatefulWidget {
  const MyWeb({super.key});

  @override
  State<MyWeb> createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  late final WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController() 
    ..loadRequest(Uri.parse('https://twitter.com/'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('webView'),centerTitle: true,),
      body: WebViewWidget(controller: controller),
    );
  }
}
