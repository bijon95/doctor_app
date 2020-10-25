import 'dart:convert';

import 'package:doctorapp/Model/SpecilistModel.dart';
import 'package:doctorapp/SignUp/DoctorSignUp.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class SpecilishList extends StatefulWidget {
  @override
  _SpecilishListState createState() => _SpecilishListState();
}

class _SpecilishListState extends State<SpecilishList> {

bool _isLoading = true; 
  List<SpecilistModel> spList = List();
  Future getSpecilistList()async {
    final responce = await http.post("http://doctor-api.appstic.xyz/getallspacialist");
    var data = json.decode(responce.body);

    for(var note in data){
      spList.add(SpecilistModel.fromJson(note));
    }
    setState(() {
      _isLoading = false ;
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    getSpecilistList();

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Specilist List"),),
      body: _isLoading ? CircularProgressIndicator() : Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: spList.length,
            itemBuilder: (
            
            BuildContext contxt, int index){
              
              return GestureDetector(
                onTap: (){
                     Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DoctorSignUp(specilistName: spList[index].title,specilistID: spList[index].id.toString(),)),);
                },
                child: Container(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blueAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(spList[index].title,style: TextStyle(
                        fontSize: 22,color: Colors.white
                      ),),
                      Icon(Icons.arrow_right,color: Colors.white,)
                    ],
                  )),
              ),);
          
        }),
      ),
    );
  }
}
