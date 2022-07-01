import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  MyCardWidget createState() => new MyCardWidget();
}
class MyCardWidget extends State<MyApp> {
  // MyCardWidget({Key}) : super();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
        theme: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide( color: Colors.teal),)
            )
        ),
        home: Scaffold(
          backgroundColor: Colors.tealAccent[400],

          body: Center(
            child: Stack(
                children: <Widget>[
                  Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:<Widget>[
                        Container(
                          width: 1600,
                          height: 650,
                          child:Center(
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child:Image.asset('assets/images/pc2.jpeg',
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            elevation: 10,
                            margin: EdgeInsets.all(15),
                            color:Colors.lightGreen,
                          ),

                          ), ),
                      ]
                  ),
                  Column(children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 830, right: 550, top: 180),
                    child: Icon(
                        Icons.account_circle,
                        size: 70
                    ), ),
                  ]),
                  Padding(padding: EdgeInsets.only(left: 780, right: 520, top: 260),
                    child: Text("WELCOME",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight. bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 720, right: 520, top: 350),
                    child: TextField(
                      showCursor: false,
                      decoration: InputDecoration(labelText: 'Username',labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight. bold,
                        color: Colors.grey,
                      ),
                          prefixIcon: Icon(Icons.person,color: Colors.tealAccent[700],),
                          hoverColor: Colors.tealAccent[700],
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red
                              )
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 720, right: 520, top: 400),
                    child: TextField(
                      showCursor: false,
                      decoration: InputDecoration(labelText: 'Password',labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight. bold,
                        color: Colors.grey,
                      ),
                          prefixIcon: Icon(Icons.person,color: Colors.tealAccent[700],),
                          hoverColor: Colors.tealAccent[700],
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.red
                              )
                          )
                      ),
                    ),
                  ),
                  Container(

                    child: Padding(padding: EdgeInsets.only(left: 885, right: 550, top: 450,),
                      //   margin: EdgeInsets.all(25),
                      child: FlatButton(
                        child: Text('Forgot Password?', style: TextStyle(fontSize: 10.0,fontStyle:FontStyle.italic,
                             ),),

                       // minWidth: 290,
                        //height: 50,
                       // shape: RoundedRectangleBorder(
                         //   borderRadius: BorderRadius.circular(50.0)),
                       // color: Colors.tealAccent[700],
                        textColor: Colors.black54,

                        onPressed: () {},
                      ),
                    ),),
            Container(

              child: Padding(padding: EdgeInsets.only(left: 760, right: 550, top: 480,),
             //   margin: EdgeInsets.all(25),
                child: FlatButton(
                  child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
                  minWidth: 290,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                  color: Colors.tealAccent[700],
                  textColor: Colors.white,

                  onPressed: () {},
                ),
               ),),]
            ),
          ),
        )
    );
  }
}
