import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
           Image.asset(
           fit: BoxFit.fitWidth,
          'assets/images/stefan-kunz-6VeIwIf3c_g-unsplash.jpg',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  controller: nameController,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    suffixIcon: InkWell(onTap: (){
                      setState(() {
                        nameController.clear();
                      });
                    },
                      child: Icon(Icons.clear),
                    ),
                  ),

                ),
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: isPasswordVisible,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      child: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        print(
                            'Text in Name Controller:${nameController.text.toString()}');
                        print(
                            'Text in Password Controller:${passwordController.text.toString()}');
                      },
                      child: Text(
                        'Login'.toUpperCase(),
                        style:
                            TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container()
        ],
      ),
    );
  }
}
