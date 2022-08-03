import 'package:flutter/material.dart';
class MedicalHistory extends StatefulWidget {
  const MedicalHistory({Key? key}) : super(key: key);
  @override
  _MedicalHistoryState createState() => _MedicalHistoryState();
}
class _MedicalHistoryState extends State<MedicalHistory> {
  final TextEditingController _testcontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical History'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 25),
                child: TextField(
                  controller: _testcontroller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_outlined,color: Colors.grey.shade400,),
                    hintText: 'search for test',
                    hintStyle: TextStyle(fontSize: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
