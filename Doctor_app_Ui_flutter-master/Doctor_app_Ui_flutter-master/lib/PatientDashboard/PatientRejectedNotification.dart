import 'package:flutter/material.dart';
import 'package:murtaza_final_project/PatientDashboard/chatwithDoctor.dart';

class RejectedNotification extends StatefulWidget {
  const RejectedNotification({Key? key}) : super(key: key);

  @override
  _RejectedNotificationState createState() => _RejectedNotificationState();
}

class _RejectedNotificationState extends State<RejectedNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){},
            icon: Icon(Icons.person_rounded,size: 30,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.notifications,size: 30,color: Colors.black,))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text('Notifications',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Doctor Angilla Rejected Your appoinment.',style: TextStyle(fontSize: 25,color: Colors.black38),),
            ),
            SizedBox(height: 40,),
            RaisedButton(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Chat with your Doctor',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatWithDoctor()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
