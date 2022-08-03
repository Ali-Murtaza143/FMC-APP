import 'package:flutter/material.dart';
import 'package:murtaza_final_project/PatientDashboard/CustomerVerification.dart';
import 'package:murtaza_final_project/Screens/doctorVerification.dart';


class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          Padding(
            padding: EdgeInsets.only(left: 30.0,top: 130),
            child: Text('Are you a Doctor or Patient?',
            style: TextStyle(fontSize: 43,color: Colors.deepPurple),),
          ),
          Padding(
            padding: EdgeInsets.only(right: 195.0,top: 15),
            child: Text('Please select below',
            style: TextStyle(fontSize: 15,color: Colors.grey),textAlign: TextAlign.left,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: RaisedButton(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Doctor',style: TextStyle(color: Colors.white,fontSize: 35),),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DoctorVerify()),
              );  },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: RaisedButton(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Patient',style: TextStyle(color: Colors.grey,fontSize: 35),),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientSignUp()),
                );
              },
            ),
          ),
          SizedBox(height: 280,),
          // Padding(
          //   padding: const EdgeInsets.only(left: 90.0),
          //   child: Row(
          //     children: [
          //       Text('Already have an account?'),
          //       TextButton(onPressed: (){
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => LoginScreen()),
          //         );
          //       }, child: Text('LogIn'))
          //     ],
          //   ),
          // )
        ],
      ),

    );
  }
}
