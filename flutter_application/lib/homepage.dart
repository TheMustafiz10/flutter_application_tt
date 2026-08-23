// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   int num=0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My first Counter App", style: TextStyle(color: (const Color.fromARGB(255, 52, 56, 56)))),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//         actions: [
//           Icon(Icons.search, color: const Color.fromARGB(255, 29, 26, 25)),
//           Icon(Icons.info, color: const Color.fromARGB(255, 69, 62, 59)),
//           Icon(Icons.audiotrack, color: const Color.fromARGB(255, 80, 72, 69))

//         ],
//       ),

//       body: Center(
//         child: Text("You have pushed ${num.toString()} times.", style: TextStyle(
//         fontSize: 20.0,
//         color: Colors.black
         
//         )
//         ),
//        ),

//        floatingActionButton: FloatingActionButton(
//          onPressed: (){
//           setState(() {
//              num++;
//           });   

//          },

//          backgroundColor: Colors.brown,
//          child: Icon(Icons.add, color: Colors.black)

//         )

//     );


    
//   }
// }





//  // SingleChildScrollView

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Widget"),
//         shadowColor: const Color.fromARGB(255, 66, 68, 79),
//         backgroundColor: Colors.blueGrey,
//       ),

  
//       body: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Center(
//             child: Text(
//               "Flutter is one of the popular framework." * 20,
//               style: const TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



// // Container
// class _HomepageState extends State<Homepage> {
//   double height = 150.0;
//   double width = 150.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Widget"),
//         shadowColor: const Color.fromARGB(255, 66, 68, 79),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Center(
//         child: Container(
//           height: height,
//           width: width,
//           decoration: BoxDecoration(
//             color: const Color.fromARGB(255, 112, 127, 113),
//             border: Border.all(
//               color: const Color.fromARGB(255, 86, 80, 80),
//               width: 1.0,
//             ),
//             borderRadius: BorderRadius.all(Radius.circular(12.0)), // Fixed: added radius value
//           ),
//           child: Center(
//             child: Column( // Fixed: replaced invalid 'widget(...)' with 'Column'
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [
//                 Text("Flutter Widget"),
//                 SizedBox(height: 8),
//                 Icon(Icons.add_box, size: 30.0),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




// class _HomepageState extends State<Homepage> {
//   double height = 150.0;
//   double width = 150.0;
//   Color color = Colors.red;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Widget"),
//         shadowColor: const Color.fromARGB(255, 66, 68, 79),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Center(
//         child: Container(
//           height: height,
//           width: width,
//           decoration: BoxDecoration(
//             color: color,
//             border: Border.all(
//               color: Colors.white,
//               width: 1.0,
//             ),
//             borderRadius: BorderRadius.all(Radius.circular(60.0)),
//           ),
//           child: Center(
//             child: InkWell(
//               onTap: () {
//                 setState(() {
//                   height = 200;
//                   width = 200;
//                   color = Colors.blueGrey;
//                 });
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text("Flutter Widget"),
//                   SizedBox(height: 8),
//                   Icon(Icons.add_box, size: 30.0),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




// // Button
// class _HomepageState extends State<Homepage> {
//   double height = 150.0;
//   double width = 150.0;
//   Color color = Colors.red;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Widget"),
//         shadowColor: const Color.fromARGB(255, 66, 68, 79),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blueGrey,
//               foregroundColor: Colors.white,
//             ),
//             onPressed: () {
//               print("Button Clicked");
//             },
//             child: Text("Click me"),
//           ),

//           TextButton(
//             onPressed: () {
//               print("Button Clicked");
//             },
//             child: Text("Click Me"),
//           ),

//           IconButton(
//             icon: Icon(Icons.add_a_photo),
//             onPressed: () {
//               print("Captured Photo");
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }





// // Row & Column

// class _HomepageState extends State<Homepage> {

//   @override
//   Widget build(BuildContext context) {
//     Size size=MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Widget"),
//         shadowColor: const Color.fromARGB(255, 66, 68, 79),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SizedBox(
//           width: size.width,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 color: Colors.blueGrey,
//                 height: 100,
//                 width: 200,
//               ),
//               SizedBox(height: 10),
          
//               Container(
//                 color: Colors.blueGrey,
//                 height: 100,
//                 width: 200,
//               ),
//               SizedBox(height: 10),
          
//               Container(
//                 color: Colors.blueGrey,
//                 height: 100,
//                 width: 200,
//               )
              
          
          
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// // Flex for Column
// class _HomepageState extends State<Homepage> {

//   @override
//   Widget build(BuildContext context) {
//     Size size=MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Widget"),
//         shadowColor: const Color.fromARGB(255, 66, 68, 79),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SizedBox(
//           width: size.width,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   color: Colors.blueGrey,
                  
//                 ),
//               ),
//               SizedBox(height: 10),
          
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   color: Colors.blueGrey,
                  
                  
//                 ),
//               ),
//               SizedBox(height: 10),
          
//               Expanded(
//                 flex: 1,
//                 child: Container(
//                   color: Colors.blueGrey,
                 
//                 ),
//               )
              
          
          
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





// // Flex for Row
// class _HomepageState extends State<Homepage> {

//   @override
//   Widget build(BuildContext context) {
//     Size size=MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Widget"),
//         shadowColor: const Color.fromARGB(255, 66, 68, 79),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SizedBox(
//           // width: size.width,
//           height: size.width,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   color: Colors.blueGrey,
//                   height: 100,
                  
//                 ),
//               ),
//               SizedBox(width: 20),
          
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   color: Colors.blueGrey,
//                   height: 100,
                  
                  
//                 ),
//               ),
//               SizedBox(width: 20),
          
//               Expanded(
//                 flex: 1,
//                 child: Container(
//                   color: Colors.blueGrey,
//                   height: 100,
                 
//                 ),
//               )
              
          
          
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
