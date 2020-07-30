import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myBarcodeText;

  @override
  void initState() { 
    super.initState();
    myBarcodeText = "Your scan result will appear here";
  }
  Future scanFromCam() async {
    

    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#000000', 'Close', true, null);
    print(barcodeScanRes);
    setState(() {
       myBarcodeText = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan barcode', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 40,fontFamily:'Niconne'),

        ),
        elevation: 100.0,
        centerTitle: true,
        
      ),
      body: Center(
        child: Text(myBarcodeText),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scanFromCam();
        },
        child: Icon(Icons.photo_camera),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
