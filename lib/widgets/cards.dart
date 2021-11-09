import 'package:flutter/material.dart';
import 'package:velozity/helper/dimensions.dart';

class CardWidget extends StatefulWidget {
  final String ?heading;
  final String ?h1;
  final String ?para;
  final String ?buttonText;
  CardWidget({ Key? key, this.heading, this.h1, this.buttonText, this.para}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(widget.heading.toString(), style: TextStyle(color: Colors.white),)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: vpW*0.94,
            // height: vpH*0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment(0.0, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color(0xFF1976D2),
                  Colors.blueAccent
                ], // red to yellow // repeats the gradient over the canvas
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(widget.h1.toString(), style: TextStyle(color: Colors.white, fontSize: vpH*0.025, fontWeight: FontWeight.w700),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(widget.para.toString(), style: TextStyle(color: Colors.white, fontSize: vpH*0.02),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.white,
                      minimumSize: Size(150, 50),
                    ),
                      onPressed:(){}, 
                      child: Text(widget.buttonText.toString(), style: TextStyle(color: Colors.blue, fontSize: vpH*0.02, fontWeight: FontWeight.w700),)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}