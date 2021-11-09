import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velozity/helper/dimensions.dart';
import 'package:velozity/widgets/cards.dart';
import 'package:velozity/widgets/quickLinksCard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu, size: vpH*0.04),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.map, size: vpH*0.04),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.alarm, size: vpH*0.04),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.help, size: vpH*0.04),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: vpW*0.94,
              child: Column(children:[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: vpH*0.07,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child:Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.timelapse, color: Colors.yellow,),
                      ),
                      Text("Shift Details", style: TextStyle(color: Colors.white),),
                      new Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward_ios, color: Colors.blue,),
                      ),
                    ],)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: vpW*0.94,
                    height: vpH*0.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF616161)),
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end:
                            Alignment(0.0, 0.0), 
                        colors: <Color>[
                          Colors.black,
                          Color(0xFF212121)
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical:30.0, horizontal: 10.0),
                          child: CircularPercentIndicator(
                            radius: vpH * 0.25,
                            lineWidth: vpW * 0.045,
                            animation: true,
                            percent: 0.1, // Defaults to 0.5.
                            backgroundColor: Color(0xFF263238),
                            center: Center(
                              child: Container(
                                // color: Colors.pink,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("\u{20B9} 271",
                                      style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: vpH * 0.03, color: Colors.white),
                                    ),
                                    Text("so far this week",
                                      style: new TextStyle(
                                        fontSize: vpH * 0.015, color: Colors.white),
                                    ),
                                    Text("\u{20B9} 924",
                                      style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: vpH * 0.02, color: Colors.white),
                                    ),
                                    Text("Lastweek",
                                      style: new TextStyle(
                                        fontSize: vpH * 0.015, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: (() {
                              return Colors.lightBlueAccent[100];
                            }()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Complete more tasks & earn more!", style: TextStyle(color: Colors.white),),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green[400],
                          minimumSize: Size(300, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        ),
                          onPressed:(){}, 
                          child: Text("START DUTY", style: TextStyle(color: Colors.white, fontSize: vpH*0.02, fontWeight: FontWeight.w700),)
                        ),
                      ],
                    ),
                  ),
                ),
                CardWidget(heading:"FEATURE", h1:"See your ID Card", para:"ID card can be shown as proof of working as a Swiggy Delivery Partner", buttonText:"GO TO PROFILE"),
                CardWidget(heading:"PENDING ACTIONS", h1:"Change battery setting", para:"Ensures that you do not get automatically logged out", buttonText:"OPEN SETTINGS"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("QUICK LINKS", style: TextStyle(color: Colors.white),)),
                ),
                Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          QuickLinks(icon: Icon(Icons.account_balance_wallet, color: Colors.blue, size: vpH*0.05), amount: "0", text: "Today's earnings",),
                          QuickLinks(icon: Icon(Icons.account_balance_wallet, color: Colors.blue, size: vpH*0.05), amount: "271", text: "Week's earnings"),
                        ],
                      ),
                      Row(
                        children: [
                          QuickLinks(icon: Icon(Icons.price_change, color: Colors.blue, size: vpH*0.05), amount: "2172", text: "Floating Cash"),
                          QuickLinks(icon: Icon(Icons.timer, color: Colors.blue, size: vpH*0.05), amount: "00 min", text: "Login duration"),
                        ],
                      )
                    ],
                  ),
                )
              ]
              ),
            ),
          )
        ),
      ),
    );
    
  }
}