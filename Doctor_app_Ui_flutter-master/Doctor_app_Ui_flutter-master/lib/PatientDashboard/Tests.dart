import 'package:flutter/material.dart';
class Tests extends StatefulWidget {
  const Tests({Key? key}) : super(key: key);
  @override
  _TestsState createState() => _TestsState();
}
class _TestsState extends State<Tests> {
  final TextEditingController _testcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tests'),
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
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Test Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  Text('Color code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ],
              ),
              SizedBox(height: 5,),
              Container(
                height: 410,
                width: 360,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 170,
                width: 300,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(radius: 10,backgroundColor: Colors.green,),
                      title: Text('Important and Performed',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    ),
                    ListTile(
                      leading: CircleAvatar(radius: 10,backgroundColor: Colors.red,),
                      title: Text('Important and not Performed',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    ),
                    ListTile(
                      leading: CircleAvatar(radius: 10,backgroundColor: Colors.yellowAccent,),
                      title: Text('Not important but Performed',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    ),
                    ListTile(
                      leading: CircleAvatar(radius: 10,backgroundColor: Colors.grey,),
                      title: Text('Not important and not Performed',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                    ),
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
