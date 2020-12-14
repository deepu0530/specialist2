import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                height: 290,
                width: 500,
                color: Color(0xFFF2C6A9),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 3,
                                  width: 13,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 3,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                        // child: Column(
                        //   children: [
                        //     Image(
                        //       image: AssetImage("assets/images/doctor2.png"),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Appointment",style: TextStyle(color: Color(0xFF52627E),fontWeight: FontWeight.bold,fontSize: 16),),
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios,size: 12,color: Colors.grey,),
                        Text("August",style: TextStyle(color: Color(0xFF52627E),fontSize: 12),),
                        Icon(Icons.arrow_forward_ios,size: 12,color: Colors.grey,),
                      ],
                    ),
                  ],
                ),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Cal(week: "Sun",day: "2",),
                    Cal(week: "Mon",day: "3",),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      height: 80,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFF94D3DA),
                          boxShadow: [BoxShadow(
                            color: Color(0xFF94D3DA),
                            blurRadius: 7,
                            offset: Offset(0,3),
                          )]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Cal(week: "Tue",day: "4",),
                          ],
                        )),
                    Cal(week: "Wed",day: "5",),
                    Cal(week: "Thu",day: "6",),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("About",style: TextStyle(color: Color(0xFF52627E),fontWeight: FontWeight.bold,fontSize: 16),),
                    Row(
                      children: [
                        Text("Call now",style: TextStyle(color: Color(0xFF94D3DA),fontSize: 12,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dr. Jane Foster is a long established fact that a reader will be",style: TextStyle(color: Color(0xFFBCC0CC),fontWeight: FontWeight.bold,fontSize: 14),),
                        Text("Distracted by  the readable conrnt of a page when looking at",style: TextStyle(color: Color(0xFFBCC0CC),fontWeight: FontWeight.bold,fontSize: 14),),
                        Text("its layout the point of using lorem.",style: TextStyle(color:Color(0xFFBCC0CC),fontWeight: FontWeight.bold,fontSize: 14),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Rows(color: Color(0xFF8DB4DB),number: "648",name: "Patients",),
                    Rows(color: Color(0xFF94D3DA),number: "6",name: "Years exp",),
                    Rows(color: Color(0xFFF7D2B8),number: "1084",name: "Surgery",),
                    Rows(color: Color(0xFFF5BC77),number: "4.9",name: "Rating",),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 500,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF94D3DA),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Free:",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                          Icon(Icons.money_off,color: Colors.white,),
                          Text("10.50",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                        ],
                      ),
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFFAADBE2),
                                ),
                                child: Center(child: Text("Appointment",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
    ),
        ],
    ),
        ),
      ),
    );
  }
}

class Rows extends StatelessWidget {
  const Rows({
    this.color,this.number,this.name,
    Key key,
  }) : super(key: key);
final Color color;
final String number;
final String name;
  @override
  Widget build(BuildContext context) {
    return
        Container(
          height: 60,
          width: 90,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20.0),
            color: color,
          ),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
              Text(name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
        ],
          ),
    );
  }
}

class Cal extends StatelessWidget {
  const Cal({
    this.week,this.day,
    Key key,
  }) : super(key: key);
final String week;
  final String day;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(week,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 16),),
            SizedBox(height: 5,),
            Text(day,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 16),),
          ],
        )
      ],
    );
  }
}
