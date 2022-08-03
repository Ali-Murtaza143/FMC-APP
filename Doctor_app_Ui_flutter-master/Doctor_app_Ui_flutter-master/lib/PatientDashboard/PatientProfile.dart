import 'package:flutter/material.dart';

class PatientProfile extends StatefulWidget {
  const PatientProfile({Key? key}) : super(key: key);

  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.settings,size: 35,))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top:25.0),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 60,
                ),
                SizedBox(height: 10,),
                Text("Patient's Name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text('patient@gmail.com',style: TextStyle(fontSize: 17,color: Colors.grey)),
                SizedBox(height: 40,),
                Container(
                  height: 400,
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
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: (){
                          print('About me clicked');
                        },
                        child: ListTile(
                          leading: Icon(Icons.person_rounded,size: 30,),
                          title: Text('About me',style: TextStyle(fontSize: 25),),
                          trailing: Icon(Icons.arrow_forward_ios,size: 26,),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print('My Appointments clicked');
                        },
                        child: ListTile(
                          leading: Icon(Icons.calendar_today_outlined,size: 30,),
                          title: Text('My appointments',style: TextStyle(fontSize: 23),),
                          trailing: Icon(Icons.arrow_forward_ios,size: 26,),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print('Test Results clicked');
                        },
                        child: ListTile(
                          leading: Icon(Icons.sd_card_alert_outlined,size: 30,),
                          title: Text('Test Results',style: TextStyle(fontSize: 25),),
                          trailing: Icon(Icons.arrow_forward_ios,size: 26,),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print('Payments methods clicked');
                        },
                        child: ListTile(
                          leading: Icon(Icons.payment,size: 30,),
                          title: Text('Payments methods',style: TextStyle(fontSize: 25),),
                          trailing: Icon(Icons.arrow_forward_ios,size: 26,),
                        ),
                      ),
                      Divider(thickness: 1,color: Colors.grey,),
                      GestureDetector(
                        onTap: (){
                          print('Notifications clicked');
                        },
                        child: ListTile(
                          leading: Icon(Icons.notifications_active_outlined,size: 30,),
                          title: Text('Notifications',style: TextStyle(fontSize: 25),),
                          trailing: Icon(Icons.arrow_forward_ios,size: 26,),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print('Privacy and Security clicked');
                        },
                        child: ListTile(
                          leading: Icon(Icons.privacy_tip_outlined,size: 30,),
                          title: Text('Privacy & Security',style: TextStyle(fontSize: 22),),
                          trailing: Icon(Icons.arrow_forward_ios,size: 26,),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
