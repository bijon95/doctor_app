import 'dart:convert';

import 'package:doctorapp/Model/doctorModel.dart';
import 'package:doctorapp/doctorView.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class DoctorsList extends StatefulWidget {
  @override
  _DoctorsListState createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {

  List<DoctorModel> doctorList = List();

  bool _isLoading = true ;

  Future getDocList() async {
    final responce = await http.post("https://doctor-api.appstic.xyz/getspacialist/1");

    var data = jsonDecode(responce.body) ;

    setState(() {
      _isLoading = false;
    });
    for(var note in data){
setState(() {
  doctorList.add(DoctorModel.fromJson(note));
});

    }

    print(doctorList[0].userName);
  }

  @override
  void initState() {
    // TODO: implement initState
    getDocList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Doctor List"),),
      body: _isLoading == true ? CircularProgressIndicator() : SingleChildScrollView(
        child: Container(
         // margin: EdgeInsets.only(bottom: 80),
          height: MediaQuery.of(context).size.height-90,
          child: ListView.builder(
              itemCount: doctorList.length,
              itemBuilder: (BuildContext context, int index) =>(

                   Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 8),
                      child: Card(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 78,
                                  width: 68,
                                 child: Image.network("https://doctor-api.appstic.xyz/storage/uploads/users/1603376993.png"),
                                  //
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        doctorList[index].fullName,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff262628),
                                          fontFamily: 'DMSans-Bold',
                                        ),
                                      ),
                                      Text(
                                        "Medicine",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffCBC9D9),
                                          fontFamily: 'DMSans-Bold',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Call Now',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff2DCED6),
                                      fontFamily: 'DMSans-Bold',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => DoctorView(name: doctorList[index].fullName,)),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Book Appoinment',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff2DCED6),
                                          fontFamily: 'DMSans-Bold',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),

//                    Container(
//                        margin: EdgeInsets.only(left: 70),
//                        height: 15,
//                        width: 15,
//                        child: Icon(Icons.phone)
//                    ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
          )),
        ),
      ),
    );
  }



}
