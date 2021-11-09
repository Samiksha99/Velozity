import 'package:flutter/material.dart';
import 'package:velozity/helper/dimensions.dart';

class QuickLinks extends StatefulWidget {
  final Icon ?icon;
  final String ?amount;
  final String ?text;
  const QuickLinks({ Key? key, this.amount, this.text, this.icon}) : super(key: key);

  @override
  _QuickLinksState createState() => _QuickLinksState();
}

class _QuickLinksState extends State<QuickLinks> {
  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: vpW*0.41,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: widget.icon),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('\u{20B9} '+widget.amount.toString(), style: TextStyle(color: Colors.white, fontSize: vpH*0.025, fontWeight: FontWeight.w600),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(widget.text.toString(), style: TextStyle(color: Colors.white),),
                  Icon(Icons.arrow_forward_ios, color: Colors.blue,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}