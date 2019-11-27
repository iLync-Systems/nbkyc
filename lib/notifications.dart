import 'package:flutter/material.dart';
import 'package:nb_kyc/CustomerShapeClipper.dart';

const colorA = const Color(0XFF272A8B);

class Notifications extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MyNote();
  }
}

class MyNote extends StatefulWidget{
  @override
  MyNoteState createState() => new MyNoteState();
}
class MyNoteState extends State<MyNote> {


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      resizeToAvoidBottomInset: false,
      backgroundColor: colorA,
      floatingActionButton: RawMaterialButton (
        fillColor: Colors.blue,
        splashColor: colorA.withOpacity ( 0.5 ),
        shape: StadiumBorder ( ),
        child: Padding (
          padding: const EdgeInsets.symmetric(
              vertical: 8.0, horizontal: 20.0 ),
          child: Row (
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              SizedBox ( width: 10.0, ),
              const Text(
                "Back",
                style: TextStyle (
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              )
            ],
          ),
        ),
        onPressed: () {
          Navigator.pop ( context );
        },
      ),
      body: /*StreamBuilder(
          stream: Firestore.instance.collection('customers').snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData) return Text('Loading Data.... Please Wait');
            return Column(
              children: <Widget>[
                Text(snapshot.data.documents[0]['fname']),
                Text(snapshot.data.documents[0]['sname']),
              ],
            );

          },
      ),*/
      Stack (
          children: <Widget>[
            ClipPath (
              clipper: CustomShapeClipper ( ),
              child: Container (
                height: 270.0,
                color: Colors.white,
                child: Center (
                  child: Column (
                    children: <Widget>[
                      //
                      SizedBox ( height: 25.0, ),
                      Container (
                        width: 150.0,
                        height: 150,
                        alignment: Alignment.topCenter,
                        decoration: new BoxDecoration(
                            image: DecorationImage (
                                image: AssetImage (
                                    "assets/images/translogo.webp" ),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Text (
                        "National Bank - Digital KYC",
                        style: TextStyle (
                          color: colorA,
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
            Container (
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox ( height: 290.0, ),
                    Padding (
                      padding: EdgeInsets.only ( left: 30.0, right: 30.0 ),
                      child: Container (
                        width: double.infinity,
                        height: 280.0,
                        decoration: BoxDecoration (
                            color: Colors.white,
                            borderRadius: BorderRadius.circular ( 15.0 ),
                            boxShadow: [
                              BoxShadow (
                                color: Colors.black12,
                                offset: Offset ( 0.0, 15.0 ),
                                blurRadius: 15.0,
                              ),
                              BoxShadow (
                                  color: Colors.black12,
                                  offset: Offset ( 0.0, -10.0 ),
                                  blurRadius: 15.0
                              )
                            ]
                        ),
                        child: Padding (
                          padding: EdgeInsets.only (
                              left: 30.0, right: 30.0, top: 30.0 ),
                          child: Column (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10.0,),
                              Text("Notifications",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: colorA, fontFamily: "Poppins-Medium", fontSize: 15.0, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20.0,),
                              Text("National Bank of Malawi is advising all its customers to update their personal information as mandated by the Reserve Bank of Malawi. Thanks to NB Digital KYC, you can update all the information from your mobile phone anytime, anywhere.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black, fontFamily: "Poppins-Medium", fontSize: 14.0),
                              ),


                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                )
            ),
          ] ),
    );
  }
}