import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passswordController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                // obscureText: true,
                // autocorrect: false,
                // readOnly: true,
                // enabled: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    // suffixIcon: Icon(Icons.person)
                    // hintText: "Email",
                    labelText: "Email",
                    // labelStyle: TextStyle(color: Colors.amber)
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red))),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: passswordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                // autocorrect: false,
                // readOnly: true,
                // enabled: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    // suffixIcon: Icon(Icons.person)
                    // hintText: "Email",
                    labelText: "Password",
                    // labelStyle: TextStyle(color: Colors.amber)
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    print(emailController.text);
                    print(passswordController.text);
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
