import 'package:flutter/material.dart';
import 'package:nb_kyc/CustomerShapeClipper.dart';

const colorA = const Color(0XFF272A8B);

class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MyStatus();
  }
}

class MyStatus extends StatefulWidget{
  @override
  MyStatusState createState() => new MyStatusState();
}
class MyStatusState extends State<MyStatus> {


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
                              Text (
                                "Login", style: TextStyle (
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold, ),
                              ),
                              SizedBox ( height: 10.0, ),
                              TextField (
                                decoration: InputDecoration (
                                    hintText: "Enter you phone number",
                                    hintStyle: TextStyle (
                                        color: Colors.grey, fontSize: 16.0 )
                                ),
                              ),
                              SizedBox ( height: 20.0, ),
                              TextField (
                                obscureText: true,
                                decoration: InputDecoration (
                                    hintText: "Password",
                                    hintStyle: TextStyle (
                                        color: Colors.grey, fontSize: 16.0 )
                                ),
                              ),
                              SizedBox ( height: 20, ),
                              Row (
                                children: <Widget>[
                                  Container (
                                    width: 70.0,
                                    height: 20.0,
                                  ),
                                  InkWell (
                                    onTap: () => print ( "Tapped Button" ),
                                    child: Container (
                                      width: 170.0,
                                      height: 55.0,
                                      decoration: BoxDecoration (
                                          gradient: LinearGradient ( colors: [
//                                  Colors.cyan,
//                                  Colors.blue,
                                            colorA,
                                            colorA
                                          ], ),
                                          borderRadius: BorderRadius.all (
                                              Radius.circular ( 15.0 ) )
                                      ),
                                      child: Material (
                                        color: Colors.transparent,
                                        child: InkWell (
                                          child: Center (
                                            child: Text (
                                              "Login", style: TextStyle (
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold, ), ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
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