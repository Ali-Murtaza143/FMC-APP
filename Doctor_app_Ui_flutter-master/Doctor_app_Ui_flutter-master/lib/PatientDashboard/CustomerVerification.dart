import 'package:flutter/material.dart';
import 'package:murtaza_final_project/PatientDashboard/loginScreen.dart';
import 'package:murtaza_final_project/Screens/loginScreen.dart';
import 'package:murtaza_final_project/Widgets/text_field_input.dart';

class PatientSignUp extends StatefulWidget {
  const PatientSignUp({Key? key}) : super(key: key);

  @override
  _PatientSignUpState createState() => _PatientSignUpState();
}

class _PatientSignUpState extends State<PatientSignUp> {
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0,top: 100),
          child: Column(
            children: [
              Text('Welcome to Fetomaternal Care!',style: TextStyle(
                fontSize: 40,color: Colors.blueAccent,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              Text('You can start using this application after sign up.',style: TextStyle(
                fontSize: 15,color: Colors.grey
              ),),
              SizedBox(height: 30,),
              TextFieldInput(
                hintText: 'Enter Full Name',
                textInputType: TextInputType.emailAddress,
                textEditingController: fullname,
              ),
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
                padding: const EdgeInsets.only(top: 30.0),
                child: RaisedButton(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Create account',style: TextStyle(color: Colors.white,fontSize: 25),),
                  ),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PatientLoginScreen()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0,right: 40,top: 15),
                child: ElevatedButton(onPressed: (){},
                    child: Row(
                     children: [
                        Image.network(
                        'https://cdn.icon-icons.com/icons2/836/PNG/512/Google_icon-icons.com_66793.png',width: 25,height: 30,),
                       SizedBox(width: 10,),
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Text('Sign up with Google',style: TextStyle(fontSize: 23),),
                       )
                     ],
                    )),
              ),
              SizedBox(height: 110,),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Row(
                  children: [
                    Text('Already have an account?'),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PatientLoginScreen()),
                      );
                    }, child: Text('LogIn.'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
