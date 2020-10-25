import 'package:doctorapp/DoctorsList.dart';
import 'package:flutter/material.dart';
import 'consts.dart';
import 'custom_appbar_widget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: new Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  padding: EdgeInsets.only(top: 25),
                ),
                Container(
                  padding: EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      CustomAppBarWidget(),
                      SizedBox(
                        height: 55,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(

                            child: Container(
                              height: 150,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              //margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/images/orthopedics.png')
                                                ),
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Text(
                                              "Medicine",
                                              style: TextStyle(
                                                color: '#1E2661'.toColor(),
                                                fontSize: 18,
                                                height: 1.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DoctorsList()),
                              );
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: 150,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              //margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Container(
                                              height: 50,
                                              width: 50,
//                                              decoration: BoxDecoration(
//                                                image: DecorationImage(
//                                                    image: AssetImage('assets/images/pills.png')
//                                                ),
//                                                borderRadius: BorderRadius.all(Radius.circular(8)),
//                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Text(
                                              "Medicine",
                                              style: TextStyle(
                                                color: '#1E2661'.toColor(),
                                                fontSize: 18,
                                                height: 1.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DoctorsList()),
                              );
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 150,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              //margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Container(
                                              height: 50,
                                              width: 50,
//                                              decoration: BoxDecoration(
//                                                image: DecorationImage(
//                                                    image: AssetImage('assets/images/gyne.png')
//                                                ),
//                                                borderRadius: BorderRadius.all(Radius.circular(8)),
//                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Text(
                                              "Gynecology",
                                              style: TextStyle(
                                                color: '#1E2661'.toColor(),
                                                fontSize: 18,
                                                height: 1.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DoctorsList()),
                              );
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: 150,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              //margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Container(
                                              height: 50,
                                              width: 50,
//                                              decoration: BoxDecoration(
//                                                image: DecorationImage(
//                                                    image: AssetImage('assets/images/neorology.png')
//                                                ),
//                                                borderRadius: BorderRadius.all(Radius.circular(8)),
//                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Text(
                                              "Neorology",
                                              style: TextStyle(
                                                color: '#1E2661'.toColor(),
                                                fontSize: 18,
                                                height: 1.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DoctorsList()),
                              );
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 150,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              //margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Container(
                                              height: 50,
                                              width: 50,
//                                              decoration: BoxDecoration(
//                                                image: DecorationImage(
//                                                    image: AssetImage('assets/images/heart.png')
//                                                ),
//                                                borderRadius: BorderRadius.all(Radius.circular(8)),
//                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Text(
                                              "Cardiac",
                                              style: TextStyle(
                                                color: '#1E2661'.toColor(),
                                                fontSize: 18,
                                                height: 1.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DoctorsList()),
                              );
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: 150,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              //margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Container(
                                              height: 50,
                                              width: 50,
//                                              decoration: BoxDecoration(
//                                                image: DecorationImage(
//                                                    image: AssetImage('assets/images/ent.png')
//                                                ),
//                                                borderRadius: BorderRadius.all(Radius.circular(8)),
//                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Text(
                                              "Ent",
                                              style: TextStyle(
                                                color: '#1E2661'.toColor(),
                                                fontSize: 18,
                                                height: 1.5,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DoctorsList()),
                              );
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),
        //backgroundColor: AppColors.backgroundColor,

      ),
    );
  }
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}