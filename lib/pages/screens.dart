import 'package:flutter/material.dart';
class Screens extends StatefulWidget {
  Screens(this.value);
  var value;

  @override
  _ScreensState createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  var result = 'Calculating...';
  var controller = TextEditingController();
  var data;
  var val;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          widget.value,
          style: TextStyle(
            color: Colors.blue[900],
            letterSpacing: 0.5,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue[900],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: widget.value,
              ),
            ),
          ),
          Spacer(flex: 1,),
          Text(
            '$result',
            style: TextStyle(
              fontSize: 20.0,

            ),
          ),
          Spacer(flex: 1,),
          Padding(
            padding: EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              bottom: 5.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 6.0,
                        left: 6.0,
                      ),
                      child: MaterialButton(
                          onPressed: (){
                            operation(widget.value);
                          },
                          child: Text(
                            'Result',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
  void operation( String from){
    switch (from){
      case 'Heart Rate':
        data = controller.text;
         val = int.parse(data);
        setState(()  {
           if( val > 80 && val < 120 ){
             result = 'Normal';
          }
          else if ( val < 80 ){
            result = 'Less Than Normal';
          }
          else{
            result = 'More Than Normal';
          }
        });
        break;
      case 'Sleep':
        data = controller.text;
        val = int.parse(data);
        setState(() {
          if( val > 8 ){
            result = 'More Than Normal';
          }
          else if ( val < 8 ){
            result = 'Less Than Normal';
          }
          else{
            result = 'Normal';
          }
        });
        break;
      case 'Energy Burn':
        data = controller.text;
        val = int.parse(data);
        setState(() {
          if( val > 90 ){
            result = 'More Than Normal';
          }
          else if ( val < 90 ){
            result = 'Less Than Normal';
          }
          else{
            result = 'Normal';
          }
        });
        break;
      case 'Steps':
        data = controller.text;
        val = int.parse(data);
        setState(() {
          if( val > 2000 ){
            result = 'More Than Normal';
          }
          else if ( val < 2000 ){
            result = 'Less Than Normal';
          }
          else{
            result = 'Normal';
          }
        });
        break;
      case 'Running':
        data = controller.text;
        val = int.parse(data);
        setState(() {
          if( val > 10 ){
            result = 'More Than Normal';
          }
          else if ( val < 10 ){
            result = 'Less Than Normal';
          }
          else{
            result = 'Normal';
          }
        });
        break;
      case 'Cycling':
        data = controller.text;
        val = int.parse(data);
        setState(() {
          if( val > 20 ){
            result = 'More Than Normal';
          }
          else if ( val < 20 ){
            result = 'Less Than Normal';
          }
          else{
            result = 'Normal';
          }
        });
        break;
    }
  }
}
