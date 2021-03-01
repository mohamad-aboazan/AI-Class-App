import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  @override
  TestState createState() {
    return TestState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class TestState extends State<Test> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
//    TextEditingController t1 = new TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Form(
            key: _formKey,
            child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              TextFormField(
//                controller: t1,
                validator: (value) {
                  if (value.isEmpty) {
                    return "الرجاء ملء هذا الحقل";
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: "اسم المستخدم"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "اسم المستخدم"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "اسم المستخدم"),
              ),
              ElevatedButton(onPressed: () {
                if (_formKey.currentState.validate())
                  print("validate");

              }, child: Text("click"))
            ],
          ),
        )),
      ),
    );
  }
}
