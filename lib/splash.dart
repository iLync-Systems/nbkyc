import 'package:flutter/material.dart';
import 'dart:math'
;
class Loader extends StatefulWidget{
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation_rotation;
  Animation<double> animation_radius_in;
  Animation<double> animation_radius_out;

  final double initRadius = 85.0;
  double radius = 0;

  @override
  void initState(){
    super.initState();

    controller = AnimationController(vsync: this, duration: Duration(seconds: 4));

    animation_rotation = Tween<double>(
        begin: 0.0,
        end: 1.0
    ).animate(CurvedAnimation(parent: controller, curve: Interval(0.0, 1.0, curve: Curves.linear)));

    animation_radius_in = Tween<double>(
        begin: 1.0,
        end: 0.0
    ).animate(CurvedAnimation(parent: controller, curve: Interval(
        0.55,1.0, curve: Curves.elasticIn)));

    animation_radius_out = Tween<double>(
        begin: 0.0,
        end: 1.0
    ).animate(CurvedAnimation(parent: controller, curve: Interval(
        0.0,0.45, curve: Curves.elasticOut)));

    controller.addListener((){
      setState(() {
        if(controller.value >= 0.5 && controller.value <= 1.0){
          radius = animation_radius_in.value * initRadius;
        }else if(controller.value >= 0.0 && controller.value <= 0.5){
          radius = animation_radius_out.value * initRadius;
        }
      });
    });

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Stack(
            children: <Widget>[RotationTransition(
              turns: animation_rotation,
              child: Stack(
                children: <Widget>[
//            Dot(
//              radius: 50.0,
//              color: Colors.blue,
//            ),
                  Transform.translate(
                    offset: Offset(radius * cos(pi/4), radius * sin(pi/4)),
                    child: Dot(
                      radius: 3.0,
                      color: Colors.blueAccent.withOpacity(0.3),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(radius * cos(2*pi/4), radius * sin(2*pi/4)),
                    child: Dot(
                        radius: 4.0,
                        color: Colors.blueAccent.withOpacity(0.4)
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(radius * cos(3*pi/4), radius * sin(3*pi/4)),
                    child: Dot(
                      radius: 5.0,
                      color: Colors.blueAccent.withOpacity(0.5),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(radius * cos(4*pi/4), radius * sin(4*pi/4)),
                    child: Dot(
                      radius: 6.0,
                      color: Colors.blueAccent.withOpacity(0.6),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(radius * cos(5*pi/4), radius * sin(5*pi/4)),
                    child: Dot(
                      radius: 7.0,
                      color: Colors.blueAccent.withOpacity(0.7),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(radius * cos(6*pi/4), radius * sin(6*pi/4)),
                    child: Dot(
                      radius: 8.0,
                      color: Colors.blueAccent.withOpacity(0.8),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(radius * cos(7*pi/4), radius * sin(7*pi/4)),
                    child: Dot(
                      radius: 9.0,
                      color: Colors.blueAccent.withOpacity(0.9),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(radius * cos(8*pi/4), radius * sin(8*pi/4)),
                    child: Dot(
                      radius: 10.0,
                      color: Colors.blueAccent.withOpacity(1.0),
                    ),
                  ),
                ],
              ),
            ),
              Center(
                  child: Container(
                    width: 140.0,
                    height: 140.0,
                    child: Image.asset("assets/images/logo.png"),
                  )
              ),
            ]
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;

  Dot({this.radius, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.radius,
        height: this.radius,
        decoration: BoxDecoration(
          color: this.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
