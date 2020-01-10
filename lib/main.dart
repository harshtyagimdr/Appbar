import 'package:appbar/newpage.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: new HomePage(),
      
      // routes:{
      //   '/a': (context)=>new NewPage("New Page"),
        
      // }
    );
  }

}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Harroxx"),
        
        elevation:defaultTargetPlatform ==TargetPlatform.android ? 5.0:0.0,

      ),
      drawer: new Drawer(
        child:new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text( "harshtyagimdr@gmail.com"),
               accountName:new Text(" Harsh Tyagi"),
               currentAccountPicture: new CircleAvatar(
                 backgroundColor: Colors.white,
                 child: new Text("H"),
               ),
               otherAccountsPictures: <Widget>[
                 new CircleAvatar(
                   backgroundColor: Colors.white,
                   child:new Text("T"),
                 )
               ],

            ),
            new ListTile(
              title: new Text("Page One"),
              trailing: new Icon(Icons.arrow_upward),
              onTap:(){
                 Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context)=>
                  new NewPage("Page One") ));

               } ,
            ),
              new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_downward),
                onTap:(){
                 Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context)=>
                  new NewPage("Page Two") ));

               } ,
            ),
            
            new Divider(),
              new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
              
            )
          ],
        ) ,
      ),
      body: new Container(
        child: new Center(
          child:ListView(
          children:<Widget>[
            
            
            Image.network("https://picsum.photos/300"),
            new Center( child:Text("Home",
            style: TextStyle
            (fontWeight: FontWeight.bold, fontSize: 18),
            ),
       
            )

          ]),
          
        
          

        ),
      ),
      
    );
  }
}