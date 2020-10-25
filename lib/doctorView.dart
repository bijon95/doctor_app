import 'package:doctorapp/Model/doctorModel.dart';
import 'package:doctorapp/Thanks.dart';
import 'package:flutter/material.dart';

class DoctorView extends StatefulWidget {
  List<DoctorModel> doctorList = List();
  String name;
  int index;
  DoctorView({this.name});
  @override
  _DoctorViewState createState() => _DoctorViewState();
}

class _DoctorViewState extends State<DoctorView> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 80,
                width: 80,
                child: Image.network(
                    "https://doctor-api.appstic.xyz/storage/uploads/users/1603376993.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  widget.name,
                  style: TextStyle(fontSize: 24, color: Colors.blue),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                child: Text("Medicine"),
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      color: Colors.grey[300],
                      height: 70,
                      width: MediaQuery.of(context).size.width / 2 - 1,
                      child: Column(
                        children: [
                          Text("Timing"),
                          Text("4:30 PM -8:30 PM"),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      color: Colors.grey[300],
                      height: 70,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: [
                          Text("Fee"),
                          Text("600/= "),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "About Doctor",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "Docotor Details",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "Popular Diagnostic Center, Center",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("${selectedDate.toLocal()}".split(' ')[0],style: TextStyle(fontSize: 22),),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () => _selectDate(context),
                    child: Text('Select date'),
                  ),
                ],
              ),
              RaisedButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Thanks()),
                  );
                },
                child: Text("BOOK AN APPOINTMENT"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
