import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:Color(0xFF4D004D),
      ),
      home:Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 250,
                  ),
                  Container(
                    height: 170,
                   // width: 700,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/badiru.jpg'),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter
                        )
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                         backgroundImage: AssetImage('assets/badiru-1.jpg'),
                          radius: 60,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Badiru Sulaimon',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 5),
                            Text('@Badiru',
                            style: TextStyle(
                              color: Colors.grey
                            ),),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.stacked_line_chart_sharp, color: Colors.grey,),
                                Text('19/20')
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('TRACKS',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                                Icons.stacked_bar_chart,
                                color: Color(0xFF4D004D),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFBFACBF),
                                borderRadius:BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text('General')
                            ),
                            Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFFBFACBF),
                                    borderRadius:BorderRadius.all(Radius.circular(20))
                                ),
                                child: Text('Mobile')
                            ),
                            Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFFBFACBF),
                                    borderRadius:BorderRadius.all(Radius.circular(20))
                                ),
                                child: Text('Flutter')
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.00),
                      topRight: Radius.circular(20.00),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFBFACBF),
                        blurRadius: 5,
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
                  child: Column(
                    children: [
                      Container(
                        child:Row(
                          children: [
                            Icon(Icons.person, color: Color(0xFF4D004D),),
                            SizedBox(width: 30),
                            Text('Badiru Sulaimon')
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black26,
                      ),
                      SizedBox(height: 20),
                      Container(
                        child:Row(
                          children: [
                            Icon(Icons.email, color: Color(0xFF4D004D),),
                            SizedBox(width: 30),
                            Text('badirusulaimon27@gmail.com')
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black26,
                      ),
                      SizedBox(height: 20),
                      Container(
                        child:Row(
                          children: [
                            Icon(Icons.phone, color: Color(0xFF4D004D),),
                            SizedBox(width: 30),
                            Text('07012931220')
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black26,
                      ),
                      SizedBox(height: 20),
                      Container(
                        child:Row(
                          children: [
                            Icon(Icons.stacked_line_chart_sharp, color: Color(0xFF4D004D),),
                            SizedBox(width: 30),
                            Text('Stage 2')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
