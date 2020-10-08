import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome>
    with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;
  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    print(myanicon);
  
    
    animation = CurvedAnimation(
      parent: myanicon, 
      curve: Curves.bounceInOut
    )
    ..addListener(() {

      setState(() {
        print(animation.value);
      });
     });
    myanicon.forward();
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Chat'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("   WELCOME \n          TO   \n  FRIENDSAPP",
                style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.blue),

                ),
              SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: MaterialButton(
                  minWidth: 300 * animation.value,
                  height: 40 * animation.value,
                  child: Text('Registration'),
                  onPressed: () {
                    Navigator.pushNamed(context, "reg");
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: MaterialButton(
                  minWidth: 300 * animation.value,
                  height: 40 * animation.value,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, "login");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}