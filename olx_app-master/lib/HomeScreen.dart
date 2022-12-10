import 'package:flutter/material.dart';
import 'package:olx_app/Welcome/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:olx_app/uploadAdScreen.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  FirebaseAuth auth =FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {

    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;

    Widget showItemsList(){

    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.refresh, color: Colors.white),
          onPressed: (){},
        ),
        actions: [
          TextButton(
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.person, color: Colors.white),
              ),

          ),

          TextButton(
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.search, color: Colors.white),
            ),

          ),
          TextButton(
            onPressed: (){
              auth.signOut().then((_){
               Route newRoute =MaterialPageRoute(builder: (_) => welcomeScreen()) ;
               Navigator.pushReplacement(context, newRoute);
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.login_outlined, color: Colors.white),
            ),

          ),
        ],
        flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors:[
                  Colors.deepPurple[300],
                  Colors.deepPurple,
                ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0,1.0],
              tileMode: TileMode.clamp
            ),
          ),
        ),
        title: Text("Home Page"),
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          width: _screenWidth,
          child: showItemsList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Post',
        child: Icon(Icons.add),
        onPressed: (){
          Route newRoute =MaterialPageRoute(builder: (_) => UploadAdscreen()) ;
          Navigator.pushReplacement(context, newRoute);
        },
      ),
    );
  }
}
