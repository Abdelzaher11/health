import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                right: 1.0,
                left: 1.0,
                bottom: 5.0,
              ),
              child: Container(
                height: 260.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/splash.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                  ),
                ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton.icon(
                              onPressed: (){},
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 16.0,
                            ),
                            label: Text(
                                'Edit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35.0,),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 8.0,),
                      Text(
                        'mail@exmaple.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 0.5,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
              ),
            ),
            ListView.builder(
              itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=> Data(),
            ),
          ],
        ),
      ),
    );
  }
  Widget Data()=>Row(
    children: <Widget>[
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blue[700],
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Center(
              child: Text(
                'Data',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
