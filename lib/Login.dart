import 'package:doctorapp/DoctorsList.dart';
import 'package:doctorapp/HomePage.dart';
import 'package:doctorapp/SignUp/PatientsSignUp.dart';
import 'package:doctorapp/SignUp/SpecialistList.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: SingleChildScrollView(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: new Container(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: new Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                margin: EdgeInsets.only(right: 0, left: 0),
                child: new Wrap(
                  children: <Widget>[
                    Center(
                      child: Container(
                        alignment: Alignment(-1.0, 0.0),
                        padding: EdgeInsets.fromLTRB(30, 44, 30, 10),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Eina_regular',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        //color: Colors.white,
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: TextField(
                         // controller: user,
                          keyboardType: TextInputType.text,
                          decoration: new InputDecoration(
                            labelText: 'Your Shop Username',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        //color: Colors.blueAccent,
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: TextField(
                         // controller: pass,
                          obscureText: true,
                          decoration: new InputDecoration(
                            labelText: 'Your password',
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Center(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Container(
                                                    //color: Colors.blueAccent,
                                                    width: double.infinity,

                                                    padding:
                                                    EdgeInsets.fromLTRB(
                                                        30, 10, 30, 10),
                                                    height: 80,
                                                    child: RaisedButton(
                                                      //padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                                      color: Color.fromRGBO(
                                                          12, 53, 238, 10),
                                                      onPressed: () {

//DoctorList
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => HomePage()),
                                                        );
                                                      }, //
                                                      child: new Text(
                                                        "Login",
                                                        style: TextStyle(
                                                          fontFamily:
                                                          'Eina_regular',
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(top: 10,bottom: 10),
                                                      child: GestureDetector(
                                                          onTap: (){
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => SpecilishList()),
                                                            );
                                                          },
                                                          child: Text("Doctor SignUp",style: TextStyle(fontSize: 22,color: Colors.blueAccent),))),
                                                  GestureDetector(
                                                    onTap: (){
                                                       Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => PatientSignUp()),
                                                            );
                                                    },
                                                    child: Text("Patient SignUp",style: TextStyle(fontSize: 22,color: Colors.blueAccent),)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Center(
                      child: Container(
                        //color: Colors.white,
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: SizedBox(
                          height: 118,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    );
      
    
  }
}