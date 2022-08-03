import 'package:flutter/material.dart';
import 'package:murtaza_final_project/PatientDashboard/AcceptedNotification.dart';
import 'package:murtaza_final_project/PatientDashboard/Appoinments.dart';
import 'package:murtaza_final_project/PatientDashboard/MedicalHistory.dart';
import 'package:murtaza_final_project/PatientDashboard/PatientProfile.dart';
import 'package:murtaza_final_project/PatientDashboard/PatientRejectedNotification.dart';
import 'package:murtaza_final_project/PatientDashboard/Tests.dart';
import 'package:murtaza_final_project/PatientDashboard/uploadReports.dart';

class PatientWelcomeScreen extends StatefulWidget {
  const PatientWelcomeScreen({Key? key}) : super(key: key);

  @override
  _PatientWelcomeScreenState createState() => _PatientWelcomeScreenState();
}

class _PatientWelcomeScreenState extends State<PatientWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PatientProfile()),
            );
          },
          icon: Icon(Icons.person_rounded,size: 30,color: Colors.black,),
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.notifications,size: 30,color: Colors.black,))
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text('Good Morning, Mother!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70.0),
            child: Text('How are you feeling today?',style: TextStyle(color: Colors.grey,fontSize: 15),textAlign: TextAlign.left,),
          ),
          SizedBox(height: 50,),
          Text('Your Dashboard',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ RaisedButton(
                  elevation: 5,
                  child: Text('Medical History',style: TextStyle(color: Colors.blueAccent,fontSize: 19),),
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MedicalHistory()),
                    );
                  },
                ),
              RaisedButton(
                  elevation: 5,
                  child:Text('Tests',style: TextStyle(color: Colors.blueAccent,fontSize: 19),),
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tests()),
                    );
                  },
                ),

            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ RaisedButton(
              elevation: 5,
              child: Text('Appoinments',style: TextStyle(color: Colors.blueAccent,fontSize: 19),),
              color: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Appoinments()),
                );
              },
            ),
              RaisedButton(
                elevation: 5,
                child:Text('Upload Reports',style: TextStyle(color: Colors.blueAccent,fontSize: 19),),
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UploadReports()),
                  );
                },
              ),

            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ RaisedButton(
              elevation: 5,
              child: Text('Ask Doctor',style: TextStyle(color: Colors.blueAccent,fontSize: 20),),
              color: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => PatientsBioData()),
                // );
              },
            ),
              RaisedButton(
                elevation: 5,
                child:Text("FAQ's",style: TextStyle(color: Colors.blueAccent,fontSize: 20),),
                color: Colors.greenAccent,
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
        ],
      ),
    );
  }
}
