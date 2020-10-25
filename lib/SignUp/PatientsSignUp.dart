import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class PatientSignUp extends StatefulWidget {
  String specilistName;
  String specilistID ;
 // DoctorSPatientSignUpignUp({this.specilistName,this.specilistID});
  @override
  _DoctorSignUpState createState() => _DoctorSignUpState();
}

class _DoctorSignUpState extends State<PatientSignUp> {
bool _isLoading = false;

 TextEditingController full_name = TextEditingController();
  TextEditingController doc_desc = TextEditingController();
   TextEditingController chamber_address = TextEditingController();
  TextEditingController doc_email = TextEditingController();
   TextEditingController doc_phone = TextEditingController();
  TextEditingController doc_username = TextEditingController();
   TextEditingController doc_pass = TextEditingController();

Future addDoctor() async {
    setState(() {
  _isLoading = true;
});

    var postUri = Uri.parse("https://admin.duare.net/api/shopApi/product_add.php");
    var request = new http.MultipartRequest("POST", postUri);
  request.fields['user_name'] =doc_username.text;
    request.fields['password'] =doc_pass.text;
    request.fields['phone'] =doc_phone.text;
    request.fields['type'] ="doctor";
    request.fields['full_name'] =full_name.text;
    request.fields['email'] =doc_email.text;
    request.fields['specialist'] =widget.specilistID;
    request.fields['address'] =chamber_address.text;
    request.fields['birthday'] ="01/01/1995";
    request.fields['description'] =doc_desc.text;
    request.fields['status'] ='Active';
  


    request.send().then((result) async {

      http.Response.fromStream(result)
          .then((response) {

        if (response.statusCode == 200)
        {
          print("Uploaded! ");
          print('response.body '+response.body);
          var data = json.decode(response.body);
          var message = data['message'];
          print(message);
         
        }
        else{
         
        }

        return response.body;

      });
    }).catchError((err) => print('error : '+err.toString()))
        .whenComplete(()
    {});
    setState(() {
      _isLoading = false;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Patient"),),
     body: _isLoading ? CircularProgressIndicator() : SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              
                SizedBox(
                height: 10,
              ),
              TextField(
               controller: full_name,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  labelText: 'Full Name',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: doc_desc,
                keyboardType: TextInputType.multiline,
                minLines: null,
                decoration: new InputDecoration(
                  labelText: 'Patient Description',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
                TextField(
                controller: chamber_address,
                keyboardType: TextInputType.multiline,
                minLines: null,
                decoration: new InputDecoration(
                  labelText: ' Address',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
                TextField(
               controller: doc_email,
                keyboardType: TextInputType.multiline,
                minLines: null,
                decoration: new InputDecoration(
                  labelText: 'Patient Email',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
                TextField(
               // controller: et_desc,
                keyboardType: TextInputType.multiline,
                minLines: null,
                decoration: new InputDecoration(
                  labelText: 'Patient Phone',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
                TextField(
                controller: doc_username,
                keyboardType: TextInputType.multiline,
              
                decoration: new InputDecoration(
                  labelText: 'Patient Username',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
                TextField(
                controller: doc_pass,
               obscureText: true,
               
                decoration: new InputDecoration(
                  labelText: 'Patient pass',
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                color: Colors.blueAccent,
                child: Text("SIGN UP",style: TextStyle(color: Colors.white),),
                onPressed: (){
addDoctor();

              }),
            
            ],
          ),
        ),
      ),
  
    );
  
  }
}