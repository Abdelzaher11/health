import 'package:flutter/material.dart';
import 'package:health_version_1_0_1/pages/screens.dart';

// ignore: use_key_in_widget_constructors
class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'STATS',
          style: TextStyle(
            color: Colors.blue[900],
            letterSpacing: 0.5,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          //heart rate & sleep
          Expanded(
            child: Row(
              children: <Widget>[
                //heart rate
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context)=>Screens('Heart Rate'),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.red[400],
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: <Widget>[
                            //icon & name
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                                  child: Text(
                                      'Heart Rate',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Spacer(flex: 1,),
                                Padding(
                                  padding:  EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white54,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //no#
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding:  EdgeInsets.only(
                                    left: 15.0,
                                    ),
                                    child: Text(
                                        'Number',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //normal
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '80-120',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // sleep
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context)=>Screens('Sleep'),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.purple[800],
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: <Widget>[
                            //icon & name
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Text(
                                    'Sleep',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Spacer(flex: 1,),
                                Padding(
                                  padding:  EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white54,
                                    child: Icon(
                                      Icons.cloud_circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //no#
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding:  EdgeInsets.only(
                                      left: 15.0,
                                    ),
                                    child: Text(
                                      'Number',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //normal
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '8 Hr',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Energy burn & steps
          Expanded(
            child: Row(
              children: <Widget>[
                //energy burn
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context)=>Screens('Energy Burn'),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.orange[400],
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: <Widget>[
                            //icon & name
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Text(
                                    'Energy Burn',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Spacer(flex: 1,),
                                Padding(
                                  padding:  EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white54,
                                    child: Icon(
                                      Icons.wb_sunny,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //no#
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding:  EdgeInsets.only(
                                      left: 15.0,
                                    ),
                                    child: Text(
                                      'Number',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //normal
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '90 Kcal',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // steps
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context)=>Screens('Steps'),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.lightBlue[600],
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: <Widget>[
                            //icon & name
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Text(
                                    'Steps',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Spacer(flex: 1,),
                                Padding(
                                  padding:  EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white54,
                                    child: Icon(
                                      Icons.directions_walk,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //no#
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding:  EdgeInsets.only(
                                      left: 15.0,
                                    ),
                                    child: Text(
                                      'Number',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //normal
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '2000 Steps',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //running & cycling
          Expanded(
            child: Row(
              children: <Widget>[
                //running
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context)=>Screens('Running'),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.blue[900],
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: <Widget>[
                            //icon & name
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Text(
                                    'Running',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Spacer(flex: 1,),
                                Padding(
                                  padding:  EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white54,
                                    child: Icon(
                                      Icons.directions_run,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //no#
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding:  EdgeInsets.only(
                                      left: 15.0,
                                    ),
                                    child: Text(
                                      'Number',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //normal
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '10 Km',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                // cycling
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                          builder: (context)=>Screens('Cycling'),
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.lightGreen[500],
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: <Widget>[
                            //icon & name
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.0,
                                  ),
                                  child: Text(
                                    'Cycling',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Spacer(flex: 1,),
                                Padding(
                                  padding:  EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white54,
                                    child: Icon(
                                      Icons.motorcycle,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //no#
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding:  EdgeInsets.only(
                                      left: 15.0,
                                    ),
                                    child: Text(
                                      'Number',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //normal
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '20 Km',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
