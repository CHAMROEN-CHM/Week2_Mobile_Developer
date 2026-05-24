// Ex 1 : Scaffold, Text
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       backgroundColor: const Color.fromARGB(255, 0, 0, 0),
//       appBar: AppBar(
//         title: Text(
//           "This is my first app.",
//           style: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//             color: const Color.fromARGB(255, 0, 0, 0),
//           ),
//           ),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 20, 179, 137)),
//         body: Center(

//           child: Text(
//             "Chamroen is the best!!",
//             style: TextStyle(
//               color: const Color.fromARGB(255, 185, 26, 26),
//               fontSize: 30.0,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 2.5,
//             )
//           )
//         ),
//       ),
//     ),
//     );
// }

// Ex 2:  Container, Insets, BoxDecoration

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Container(
//       margin: EdgeInsets.all(50),
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.blue[300],
//       ),
//       child: Container(
//         margin: EdgeInsets.all(40),
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.blue[600],
//           borderRadius: BorderRadius.circular(15)
//         ),
//         child : Center(
//           child: Text(
//             "CADT Students",
//             style: TextStyle(
//               color: Colors.red,
//               fontSize: 25.0,
//               letterSpacing: 2.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//       ),
//     )
//     );
// }

// Ex 3 : Column Gradient

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Center(
//         child: Container(
//           color: Colors.blueGrey,
//           margin: EdgeInsets.all(10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue[100],
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 margin: EdgeInsets.symmetric( vertical: 20.0, horizontal: 20.0,),
//                 padding: EdgeInsets.symmetric(horizontal: 235.0, vertical: 14.0,
//                 ),
//                 child: Text(
//                   "OOP",
//                   style: TextStyle(
//                     color: Colors.blueGrey,
//                     fontSize: 40.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),

//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue[300],
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0,
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 235.0, vertical: 14.0,
//                 ),
//                 child: Text(
//                   "Dart",
//                   style: TextStyle(
//                     color: Colors.blueGrey,
//                     fontSize: 40.0,
//                   ),
//                 ),
//               ),

//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue[300],
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0,
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 220.0, vertical: 14.0,
//                 ),
//                 child: Text(
//                   "Flutter",
//                   style: TextStyle(
//                     color: Colors.blueGrey,
//                     fontSize: 40.0,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Ex: 4 : Create your welcome page
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(218, 206, 6, 63),
          centerTitle: true,
          title: Text(
            "Welcome to my Hobbies App!",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 1, 1),
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 300.0,
                    margin: EdgeInsets.all(10),
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 183, 26, 73),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "My hobbies",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 250,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Football",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Basketball",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 250,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Table Tennis",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Reading",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: 250.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(40),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        
      ),
      
    ),
  );
}
