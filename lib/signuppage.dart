import 'package:flutter/material.dart';


import 'loginpage.dart';
class SignupPage extends StatefulWidget {

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _StateSignupPage();
}

class _StateSignupPage extends State<SignupPage> {
  bool a = true;
  var c = Icons.visibility_off;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.blue,
      ),
      body:SingleChildScrollView(
      child: Column(
      children: [
      SizedBox(
      height: 30,
    ),
    Center(
    child: (
    Text(
    'SignUp',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),)
    ),
    ),
    SizedBox(
    height: 30,
    ),
    Container(
    padding: EdgeInsets.symmetric(
    horizontal: 38.0, vertical: 8.0,
    ),
    child:TextField(
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    hintText: "Username",
    prefixIcon: Align(
    heightFactor: 1,
    widthFactor: 1,
    child:Icon(
    Icons.person
    ) ,
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40)
    )
    ),
    ),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    padding: EdgeInsets.symmetric(
    horizontal: 38.0, vertical: 8.0,
    ),
    child:TextField(
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    hintText: "Email",
    prefixIcon: Align(
    heightFactor: 1,
    widthFactor: 1,
    child:Icon(
    Icons.mail
    ) ,
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40)
    )
    ),
    ),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    padding: EdgeInsets.symmetric(
    horizontal: 38.0, vertical: 8.0,
    ),
    child:TextField(
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    hintText: "Phone no.",
    prefixIcon: Align(
    heightFactor: 1,
    widthFactor: 1,
    child:Icon(
    Icons.phone
    ) ,
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40)
    )
    ),
    ),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    padding: EdgeInsets.symmetric(
    horizontal: 38.0, vertical: 8.0,
    ),
    child:TextField(
    obscureText: a,
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    hintText: "Password",
    prefixIcon: Align(
    heightFactor: 1,
    widthFactor: 1,
    child:Icon(
    Icons.lock
    ) ,
    ),
    suffix: GestureDetector(
    onTap: (){
    setState(() {
    a = !a;
    c = Icons.visibility;
    });
    },
    onDoubleTap: (){
    setState(() {
    a = !a;
    c = Icons.visibility_off;
    });
    },
    child: Icon(c)),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40)
    )
    ),
    ),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    padding: EdgeInsets.symmetric(
    horizontal: 38.0, vertical: 8.0,
    ),
    child:TextField(
    obscureText: a,
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    hintText: "Comfirm Password",
    prefixIcon: Align(
    heightFactor: 1,
    widthFactor: 1,
    child:Icon(
    Icons.lock
    ) ,
    ),
    suffix: GestureDetector(
    onTap: (){
    setState(() {
    a = !a;
    c = Icons.visibility;
    });
    },
    onDoubleTap: (){
    setState(() {
    a = !a;
    c = Icons.visibility_off;
    });
    },

    child: Icon(c)),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40)
    )
    ),
    ),
    ),
    SizedBox(
    height: 40,
    ),
    GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context){
    return SignupPage();
    },),);
    },
    child: Container(
    decoration: BoxDecoration(
    color: Colors.lightBlueAccent,
    borderRadius: BorderRadius.circular(25)
    ),
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 8.0),
    child: Center(child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
    ),
    height: 50,
    width: 200,
    ),
    ),
    SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account ?"),
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {

              },
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => FirstPage()));
                },
                child: Text(
                    'Login',
                    style:TextStyle(
                      color: Colors.blue,
                    )
                ),
              ),
            )
          ],
        )
      ],
      ),
      ),
    );
  }
}