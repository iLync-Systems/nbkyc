import 'package:flutter/material.dart';

const colorA = const Color(0XFF272A8B);

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
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
                          "About NB - Digital KYC", style: TextStyle(
                          color: colorA, fontSize: 20.0, fontWeight: FontWeight.bold, ),
                        ),
                        SizedBox(height: 15.0,),
                        Container(
                          height: 1.0,
                          color: colorA,
                        ),
                        SizedBox(height: 10.0,),
                      Text("Description",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: colorA, fontFamily: "Poppins-Medium", fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                        Text("NB Digital KYC is a mobile Application that is there to help National Bank Customers to udate their personal details digital. Time is precious avoid unnecessary queuing in Banking Halls",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black, fontFamily: "Poppins-Medium", fontSize: 15.0),
                        ),
                        SizedBox(height: 20.0,),
                        Text("Developers",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: colorA, fontFamily: "Poppins-Medium", fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text("A Team of 2019-2020 Final Year Students of CIT Department at the University of Malawi - The Polytechnic",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black, fontFamily: "Poppins-Medium", fontSize: 15.0),
                        ),
                        SizedBox(height: 20.0,),
                        Text("Owner",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: colorA, fontFamily: "Poppins-Medium", fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text("National Bank of Malawi - Press Corporation Limited",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black, fontFamily: "Poppins-Medium", fontSize: 15.0),
                        ),
                        SizedBox(height: 20.0,),
                        Text("Application Info",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: colorA, fontFamily: "Poppins-Medium", fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text("Version: 1.0.0",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black, fontFamily: "Poppins-Medium", fontSize: 15.0),
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
  );
}