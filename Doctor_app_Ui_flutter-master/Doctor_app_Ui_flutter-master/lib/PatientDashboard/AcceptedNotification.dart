import 'package:flutter/material.dart';

class AcceptedNotification extends StatefulWidget {
  const AcceptedNotification({Key? key}) : super(key: key);

  @override
  _AcceptedNotificationState createState() => _AcceptedNotificationState();
}

class _AcceptedNotificationState extends State<AcceptedNotification> {
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
              child: Text('Doctor Angilla Accepted Your appoinment.',style: TextStyle(fontSize: 25,color: Colors.black38),),
            ),
            SizedBox(height: 40,),
             RaisedButton(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Suggested Tests by Doctor',style: TextStyle(color: Colors.white,fontSize: 20),),
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
