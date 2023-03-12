import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final TextEditingController _pjg = TextEditingController();
  final TextEditingController _lbr = TextEditingController();
  double _luas = 0;
  double _klg = 0;

  void _persegipanjang() {
    double pjg = double.parse(_pjg.text);
    double lbr = double.parse(_lbr.text);

    setState(() {
      _luas = pjg * lbr;
      _klg = (2 * pjg) + (2 * lbr);
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _pjg.dispose();
    _lbr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Masukan Panjang:'),
            TextField(
              controller: _pjg, //controller
            ),
            const Text('\nMasukan Lebar:'),
            TextField(
              controller: _lbr, //controller
            ),
            Padding(
              padding: EdgeInsets.all(20), //20 pixel ke semua arah
              child: ElevatedButton(
                onPressed: _persegipanjang,
                child: const Text('Hitung'),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
            ),
            Text(
              '\nLuas: $_luas cm^2 dan Keliling: $_klg cm',
              style: const TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        )), //column center
      ), //Scaffold
    ); //Material APP
  }
}
