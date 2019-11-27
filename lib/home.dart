import 'package:flutter/material.dart';
import 'package:nb_kyc/register.dart';
import 'package:nb_kyc/status.dart';
import 'package:nb_kyc/CustomerShapeClipper.dart';
import 'package:nb_kyc/about.dart';
import 'package:nb_kyc/notifications.dart';
import 'package:nb_kyc/Animation/FadeAnimation.dart';

const colorA = const Color(0XFF272A8B);

class Home extends StatefulWidget{
  @override
  MyHomeState createState() => new MyHomeState();
}

class MyHomeState extends State<Home> {
  @override
  Widget build(BuildContext context) { return Scaffold(
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
              Icons.info,
              color: Colors.white,
            ),
            SizedBox(width: 10.0,),
            const Text(
              "About NB KYC",
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
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => About()
        ));
      },
    ),
    body: Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 330.0,
            color: colorA,
            child: Center(
              child: Column(
                children: <Widget>[
//                  SizedBox(height: 10.0,),
                  Image.asset("assets/images/logo.png"),
                  Text(
                    "National Bank - Digital KYC",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 350.0),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: 350.0,
                  height: 85.0,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => Register()
                            ));
                        },
                    padding: EdgeInsets.all(15.0),
                    splashColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)
                    ),
                    color: colorA,
                    child: Text(
                     "Start Digital KYC",
                      style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: 350.0,
                  height: 85.0,
                  child: RaisedButton(
                    splashColor: Colors.blue,
                    elevation: 5.0,
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => Status()
                      ));
                    },
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    color: colorA,
                    child: Text(
                      "Check My KYC Status",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: 350.0,
                  height: 85.0,
                  child: RaisedButton(
                    splashColor: Colors.blue,
                    elevation: 5.0,
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => Notifications(),
                      ));
                    },
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    color: colorA,
                    child: Text(
                      "KYC Notifications",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    )
  );
}}

