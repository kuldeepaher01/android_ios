import 'package:catlog_app2/utils/routes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
      child: Column(
        children : [ Image.asset("assets/images/login_image.png",
        fit: BoxFit.cover),
        
        SizedBox(
          height: 20.0,),
        Text("Welcome $name !",
        style:TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:16.0, horizontal: 32.0),
          child: Column(
            children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              labelText: "Username", hintStyle: TextStyle(fontSize: 18),
              labelStyle:  TextStyle(fontSize: 18)
            ),
            onChanged: (value){
              name =value;
              setState(() { });
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              labelText: "Password",hintStyle: TextStyle(fontSize: 18),
              labelStyle:  TextStyle(fontSize: 18)
            ),
          ),
          
          SizedBox(height: 20.0,),
          
          InkWell(
            onTap: ()async{
              setState(() {
                changeButton =true;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context,MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 400),
              width: changeButton?40:100,
              height: changeButton? 40:40,
              alignment: Alignment.center,
              child: changeButton?Icon(Icons.done, color: Colors.white):Text(
                "Login", style: 
              TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21),
              ),
              decoration: BoxDecoration(
                color:Colors.deepPurple,
                borderRadius: BorderRadius.circular(changeButton? 40: 4)),
            ),
          )
          //ElevatedButton( child: Text("Login", textScaleFactor: 1.5,),
        //style: TextButton.styleFrom(minimumSize: Size(120.0, 30.0)),
        //onPressed: (){
          //Navigator.pushNamed(context,MyRoutes.homeRoute);
       // },
       // )
            ]
            ),
        ),
        
        
        ]
      )
    )
    );
  }
}