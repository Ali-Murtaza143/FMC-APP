import 'package:flutter/material.dart';
import 'package:murtaza_final_project/Doctors%20info/DeletePatient.dart';
import 'package:murtaza_final_project/Doctors%20info/Doctorprofile.dart';
import 'package:murtaza_final_project/Doctors%20info/DoctorsAppointments.dart';
import 'package:murtaza_final_project/Doctors%20info/PatientList.dart';
import 'package:murtaza_final_project/Doctors%20info/addPatient.dart';

class DoctorWelcomeScreen extends StatefulWidget {
  const DoctorWelcomeScreen({Key? key}) : super(key: key);

  @override
  _DoctorWelcomeScreenState createState() => _DoctorWelcomeScreenState();
}

class _DoctorWelcomeScreenState extends State<DoctorWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DoctorProfile()),
            );
          },
          icon: Icon(Icons.person_rounded,size: 35,),
        ),
        actions: [IconButton(onPressed: (){},
            icon: Icon(Icons.notifications,size: 35,))],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text('Good Morning, Doctor!',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text('How are you feeling today?',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 50,),
              Text('Your Dashboard',style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text('Patient list',style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
                  ),
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PatientList()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Appointments',style: TextStyle(color: Colors.blueAccent,fontSize: 25),),
                  ),
                  color: Colors.tealAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DoctorsAppointments()),
                    );
                  },
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(top: 40.0,left: 75,right: 85),
                child: RaisedButton(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.add_circle_outline_sharp,size: 27,color: Colors.white,),
                        Text('Add Patient',style: TextStyle(color: Colors.white,fontSize: 25),),
                      ],
                    ),
                  ),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPatient()),
                    );
                  },
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 40.0,left: 75,right: 80),
                child: RaisedButton(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.delete,size: 27,color: Colors.white,),
                        Text('Delete Patient',style: TextStyle(color: Colors.white,fontSize: 25),),
                      ],
                    ),
                  ),
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DeletePatient()),
    );
    },

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
