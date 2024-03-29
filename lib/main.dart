import 'package:flutter/material.dart';
import 'package:nb_kyc/home.dart';
import 'package:nb_kyc/registerID.dart';

import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home()
//    home: RegisterIID(),
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Camera Image Picker',
//      home: Home(),
//    );
//  }
//}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  File image;
  Future getImage() async {
    File picture = await ImagePicker.pickImage(
        source: ImageSource.camera, maxWidth: 300.0, maxHeight: 500.0);
    setState(() {
      image = picture;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take a Picture'),
      ),
      body: Center(
          child: image == null
              ? Text('Smash the Camera Button to Take a Picture')
              : Image.file(image)),
      drawer: Text("This is the drawer"),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}