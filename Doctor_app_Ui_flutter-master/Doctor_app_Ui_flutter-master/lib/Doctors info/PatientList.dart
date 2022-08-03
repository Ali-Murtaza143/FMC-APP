import 'package:flutter/material.dart';
import 'package:murtaza_final_project/Doctors%20info/Doctorprofile.dart';

class PatientList extends StatefulWidget {
  const PatientList({Key? key}) : super(key: key);

  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:AppBar(
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
      body: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 45.0),
               child: Text('Patient List',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
             ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                height: 530,
                width: 350,
                padding: EdgeInsets.only(top: 15),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset: Offset(
                        2.0,
                        2,
                      ),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Name',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 10,),
                        // Expanded(
                        //   child: SizedBox(height: 300,
                        //     child:new ListView.builder(
                        //       // scrollDirection: Axis.horizontal,
                        //       shrinkWrap: true,
                        //       itemCount: 20,
                        //         itemBuilder:(context,index){
                        //           return  Text('Patient ${index}',style: TextStyle(color: Colors.blueAccent,fontSize: 30),);
                        //         },
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                    Column(
                      children: [
                         Text('Trimester',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),

    );
  }
}
