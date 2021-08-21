import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG internship',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Day1(),
    );
  }
}

class Day1 extends StatefulWidget {

  @override
  _Day1State createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  bool showPassWord = true;
  String? userName;
  String? email;
  String?password;
  String?phoneNumber;
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showPassWord = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Stage 2 promotion'),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),

                //USERNAME FIELD

                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      hintText: " Enter User name",
                      labelText: "User name",
                      alignLabelWithHint: false,
                      filled: true,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //Email TEXTFIELD

                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "email",
                        alignLabelWithHint: false,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                        suffixIcon: Icon(Icons.email)),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //PASSWORD
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: showPassWord,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "password",
                      alignLabelWithHint: false,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          showPassWord
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            showPassWord = !showPassWord;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                //PHONE NUMBER FIELD
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                        hintText: " phone number",
                        alignLabelWithHint: false,
                        filled: true,
                        prefixText: "+234",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                        prefixIcon: Icon(Icons.phone)),
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {
                    setState(() {
                      userName = userNameController.text;
                      email = emailController.text;
                      password = passwordController.text;
                      phoneNumber = phoneNumberController.text;
                    });
                    print(userName);
                    print(email);
                    print(password);
                    print(phoneNumber);
                  },
                  child: Text('submit'),
                ),
                SizedBox(height: 15.0,),
                Text('User name: $userName'),
                SizedBox(height: 15.0,),
                Text('email: $email'),
                SizedBox(height: 15.0,),
                Text('password: $password'),
                SizedBox(height: 15.0,),
                Text('phone: $phoneNumber'),
                SizedBox(height: 15.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
