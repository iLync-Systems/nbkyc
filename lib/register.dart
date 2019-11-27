import 'package:flutter/material.dart';
import 'package:nb_kyc/registerID.dart';

const colorA = const Color(0XFF272A8B);

class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RegisterD();
  }
}

class RegisterD extends StatefulWidget{
  @override
  MyRegisterD createState() => new MyRegisterD();
}
class MyRegisterD extends State<RegisterD> {
  String _fname;
  String _sname;
  String _phone;
  String _address;

  @override
  Widget build(BuildContext context) {return Scaffold(
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
                            TextFormField(
                              onChanged: (text){
                                _fname = text;
                              },
                              validator: (val) {
                                if(val.length==0) {
                                  return "First Name cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: "First Name",
                                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.65), fontSize: 16.0)
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            TextFormField(
                              onChanged: (text){
                                _sname = text;
                              },
                              validator: (val) {
                                if(val.length==0) {
                                  return "Last Name cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: "Last Name",
                                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.65), fontSize: 16.0)
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            TextFormField(
                              onChanged: (text){
                                _phone = text;
                              },
                              validator: (val) {
                                if(val.length==0) {
                                  return "Phone Number cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  hintText: "Phone Number",
                                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.65), fontSize: 16.0)
                              ),
                            ),
                            SizedBox(height: 20.0,),
                            TextFormField(
                              onChanged: (text){
                                _address = text;
                              },
                              minLines: 2,
                              maxLines: 2,
                              validator: (val) {
                                if(val.length==0) {
                                  return "Address cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                  hintText: "Address",
                                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.65), fontSize: 16.0)
                              ),
                            ),
                            SizedBox(height: 20.0,),
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
                                      builder: (context) => RegisterID(_fname,_sname,_phone,_address)
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