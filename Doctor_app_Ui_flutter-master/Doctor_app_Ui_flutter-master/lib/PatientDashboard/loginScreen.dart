import 'package:flutter/material.dart';
import 'package:murtaza_final_project/PatientDashboard/CustomerVerification.dart';
import 'package:murtaza_final_project/PatientDashboard/PatientsBioData.dart';
import 'package:murtaza_final_project/Widgets/text_field_input.dart';

class PatientLoginScreen extends StatefulWidget {
  const PatientLoginScreen({Key? key}) : super(key: key);

  @override
  _PatientLoginScreenState createState() => _PatientLoginScreenState();
}

class _PatientLoginScreenState extends State<PatientLoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           SizedBox(width: 20,height: 100,),
              Text('WelCome Back',style: TextStyle(fontSize: 40,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Text('Iam happy to see you again. You can continue where you left off by logging in.',
                  style: TextStyle(color: Colors.grey,fontSize: 15),),
               ),
            SizedBox(height: 30,),
            TextFieldInput(
              hintText: 'Enter Email Address',
              textInputType: TextInputType.emailAddress,
              textEditingController: email,
            ),
            TextFieldInput(
              hintText: 'Enter Password',
              textInputType: TextInputType.emailAddress,
              textEditingController: password,
              isPass: true,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 190.0),
              child: TextButton(
                onPressed: (){},
                child: Text('Forgot Your Password?'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: RaisedButton(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('LogIn',style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PatientsBioData()),
                  );
                },
              ),
            ),
            SizedBox(height: 210,),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Row(
                children: [
                  Text("Don't have an account yet?"),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PatientSignUp()),
                    );
                  }, child: Text('Sign Up.'))
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
