import 'package:flutter/material.dart';

class ChatWithDoctor extends StatefulWidget {
  const ChatWithDoctor({Key? key}) : super(key: key);

  @override
  _ChatWithDoctorState createState() => _ChatWithDoctorState();
}

class _ChatWithDoctorState extends State<ChatWithDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Patient to Doctor Chat',),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField (
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Doctor Name'
          ),
    ),
        ),
            SizedBox(height: 40,),
            Text('How are you feeling today?',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.green.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('My chest often hurts. I feel like my '
                      'chest has some pain similar to pressure '
                      'or chest tightness. Whenever I try '
                      'physicalactivity, it is difficulty for me to '
                      'pressure and breathe rises.',
                  style: TextStyle(fontSize: 20,color: Colors.black),),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 230.0),
              child: Text('min 60 char 80/1000',),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 40.0,left: 75,right: 85),
              child: RaisedButton(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(Icons.attach_file_outlined,size: 22,color: Colors.grey.shade600,),
                      Text('Add Attachments',style: TextStyle(color: Colors.grey.shade600,fontSize: 20),),
                    ],
                  ),
                ),
                color: Colors.teal.shade50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => AddPatient()),
                  // );
                },
              ),
            ),
            SizedBox(height: 90,),
            RaisedButton(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 25),),
              ),
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => PatientsBioData()),
                // );
              },
            ),
    ],
        ),
      ),
    );
  }
}
