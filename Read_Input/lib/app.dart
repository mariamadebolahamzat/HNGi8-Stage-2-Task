import 'package:flutter/material.dart';

class ReadInput extends StatefulWidget {
  const ReadInput({Key? key}) : super(key: key);

  @override
  _ReadInputState createState() => _ReadInputState();
}

class _ReadInputState extends State<ReadInput> {
  String output = "";
  String output1 = "";

  final TextEditingController myController = TextEditingController();
  final TextEditingController myController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Displaying User Inputs')),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image.asset('assets/images/hng.jpg'),
              Text(
                'First Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: myController,
                obscureText: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  labelText: 'Enter first name',
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Last Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                controller: myController1,
                obscureText: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),
                  labelText: 'Enter last name',
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      output = myController.text;
                      output1 = myController1.text;
                    });
                  },
                  child: Text('Display Inputs'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                'Output: $output $output1',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
