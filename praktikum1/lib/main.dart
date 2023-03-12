import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

//halo nama
// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";
//   @override
//   void dispose() {
//     textEditController.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _nama = textEditController.text;
//                 });
//               },
//               child: const Text('Klik Ini'),
//             ),
//             Text('Halo $_nama'),
//           ],
//         )),
//       ),
//     );
//   }
// }

//latihan 1
// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   final textEditController2 = TextEditingController();

//   int _panjang = 0;
//   int _lebar = 0;
//   int _luas = 0;
//   int _keliling = 0;
//   @override
//   void dispose() {
//     textEditController.dispose();
//     textEditController2.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Latihan 1',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Latihan 1'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Panjang :'),
//             TextField(
//               controller: textEditController,
//             ),
//             Text('Masukan Lebar :'),
//             TextField(
//               controller: textEditController2,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _panjang = int.parse(textEditController.text);
//                   _lebar = int.parse(textEditController2.text);
//                   _luas = _panjang * _lebar;
//                   _keliling = 2 * (_panjang + _lebar);
//                 });
//               },
//               child: const Text('Klik Ini'),
//             ),
//             Text('luas : $_luas dan  keliling : $_keliling'),
//           ],
//         )),
//       ),
//     );
//   }
// }

//padding & formatting text
// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";
//   @override
//   void dispose() {
//     textEditController.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController,
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 20, bottom: 20), //padding
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _nama = textEditController.text;
//                   });
//                 },
//                 child: const Text(
//                   'Klik Ini',
//                   style: const TextStyle(
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.cyan),
//                 ),
//               ),
//             ),
//             Text(
//               'Halo $_nama, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(fontSize: 20),
//             ), //overflow text
//             Padding(
//               padding: EdgeInsets.only(top: 20),
//               child: Text(
//                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
//                 overflow: TextOverflow.fade,
//                 maxLines: 2,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20),
//               ),
//             ), //overflow fade
//           ],
//         )),
//       ),
//     );
//   }
// }

//formatting button

// ElevatedButton(
//           	onPressed: () {},
//           	child: const Text('   Login   '),
//           	style: ElevatedButton.styleFrom(
//               	 textStyle: const TextStyle(fontSize: 20),
//               	 padding:
//                   	   const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//               	 shape: RoundedRectangleBorder(
//                 	 borderRadius: BorderRadius.circular(20.0),
//               	)),
//         	)

//image widget
// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";
//   @override
//   void dispose() {
//     textEditController.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.network(
//               'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
//               fit: BoxFit.cover,
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }
