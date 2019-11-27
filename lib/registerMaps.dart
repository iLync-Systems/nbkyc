import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

const colorA = const Color(0XFF272A8B);

class RegisterMM extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RegisterM();
  }
}

class RegisterM extends StatefulWidget{
  @override
  MyRegisterM createState() => new MyRegisterM();
}
class MyRegisterM extends State<RegisterM> {
  File _image;

  @override
  void initState(){
    super.initState();
  }

  void open_camera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      floatingActionButton: RawMaterialButton(
        fillColor: Colors.blue,
        splashColor: colorA.withOpacity(0.5),
        shape: StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.symmetric( vertical: 8.0, horizontal: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              SizedBox(width: 10.0,),
              const Text(
                "Back",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              )
            ],
          ),
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(gradient: LinearGradient(
                    colors: [colorA,colorA.withOpacity(0.75)],begin: FractionalOffset(0.0, 0.8),end: FractionalOffset(0.0, 1.0)),
                )
            ),

            Container(
              height: 250.0,
              color: Colors.white.withOpacity(0.9),
              child: Center(
                child: Column(
                  children: <Widget>[
//
                    SizedBox(height: 30.0,),
                    Container(
                      width: 150.0,
                      height: 150,
                      alignment: Alignment.topCenter,
                      decoration: new BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/translogo.webp"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 180.0,),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Container(
                        width: double.infinity,
                        height: 420.0,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1.0),
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: colorA,
                                offset: Offset(0.0, 10.0),
                                blurRadius: 10.0,
                              ),
                              BoxShadow(
                                  color: colorA,
                                  offset: Offset(0.0, -5.0),
                                  blurRadius: 10.0
                              )
                            ]
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 15.0,),
                              Text(
                                "NB - Digital KYC Registration", style: TextStyle(
                                color: colorA, fontSize: 20.0, fontWeight: FontWeight.bold, ),
                              ),
                              SizedBox(height: 15.0,),
                              Container(
                                height: 1.0,
                                color: colorA,
                              ),
                              SizedBox(height: 10.0,),
                              const Text(
                                "Upload a Sketch of your Map",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),
                              ),
                              Container(
                                  width: 300.0,
                                  height: 250.0,
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    children: <Widget>[
                                      Container(child: _image == null?
                                      Container(width: 300.0, height: 250.0,child: Center(child:
                                      RawMaterialButton(
                                        fillColor: colorA,
                                        splashColor: colorA.withOpacity(0.5),
                                        shape: StadiumBorder(),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric( vertical: 8.0, horizontal: 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              SizedBox(width: 10.0,),
                                              const Text(
                                                "Open Camera",
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white
                                                ),
                                              ),
                                              SizedBox(width: 20,),
                                              const Icon(
                                                Icons.add_a_photo,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                        onPressed: (){
                                          open_camera();
                                          print(_image.toString());
                                        },
                                      )))
                                          : Container(width: 300.0, height: 250.0,child: Image.file(_image),),)
                                    ],
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 150.0, top: 10.0),
                                child: RawMaterialButton(
                                  fillColor: Colors.blue,
                                  splashColor: colorA.withOpacity(0.5),
                                  shape: StadiumBorder(),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric( vertical: 8.0, horizontal: 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        SizedBox(width: 10.0,),
                                        const Text(
                                          "Next",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        const Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => RegisterMM()
                                    ));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            )
          ]),
    );}
}
