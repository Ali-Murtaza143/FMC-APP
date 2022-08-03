import 'package:flutter/material.dart';

class AppointmentsRequest extends StatefulWidget {
  const AppointmentsRequest({Key? key}) : super(key: key);

  @override
  _AppointmentsRequestState createState() => _AppointmentsRequestState();
}

class _AppointmentsRequestState extends State<AppointmentsRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Requests',style: TextStyle(fontSize: 25),),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Text("Patient's BioData",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
         SizedBox(height: 70,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('Patient Name:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
             Text('Shahzain',style: TextStyle(fontSize: 25,),)
           ],
         ),SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Trimester:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text('First Trimester',style: TextStyle(fontSize: 25,),)
          ],),
          SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Medical History:',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text('First Trimester',style: TextStyle(fontSize: 25,),)
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: RaisedButton(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Accept Request',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AppointmentsRequest()),
                // );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: RaisedButton(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Reject Requests',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AppointmentsRequest()),
                // );
              },
            ),
          ),
        ]
      ),
    );
  }
}
