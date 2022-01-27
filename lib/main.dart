import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormInput(),
    );
  }
}

class FormInput extends StatefulWidget {
  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  GlobalKey<FormState> formKey = GlobalKey();

  String email = '';
  String password = '';

  void submit() {
    if (!formKey.currentState!.validate()) {
      // break function
      return;
    }
    // hide keyboard
    FocusScope.of(context).unfocus();
    // save email pasword and print
    formKey.currentState!.save();
    print([email, password]);
  }

  Widget userInput({label, icon, keyboard, saveFunction, obscure = false}) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty || value.length < 6) {
          return 'Please enter an email address.';
        }
        return null;
      },
      onSaved: saveFunction,
      // controller: emailController,
      keyboardType: keyboard,
      obscureText: obscure,
      // autocorrect: false,
      // readOnly: true,
      // enabled: false,
      decoration: InputDecoration(
        prefixIcon: icon,
        // suffixIcon: Icon(Icons.person)
        // hintText: "Email",
        labelText: label,
        // labelStyle: TextStyle(color: Colors.amber)
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              userInput(
                  label: 'Email',
                  icon: Icon(Icons.person),
                  keyboard: TextInputType.emailAddress,
                  saveFunction: (value) {
                    email = value!;
                  }),
              SizedBox(
                height: 12,
              ),
              userInput(
                  label: 'Password',
                  icon: Icon(Icons.lock),
                  saveFunction: (value) {
                    password = value!;
                  },
                  obscure: true),
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
                  onPressed: submit,
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
