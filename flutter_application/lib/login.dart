import 'package:flutter/material.dart';
import 'register.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 35, top: 150),
            child: Text(
              'Welcome\nBack',
              style: TextStyle(color: Colors.white, fontSize: 53),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.5,
                right: 35,
                left: 35,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    style: TextStyle(),
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff4c505b),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            print('Sign In pressed');
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyRegister()), // Navigate to the Register screen
                          );
                        },
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 91, 87, 76),
                              fontSize: 18),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff4c505b),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyLogin(),
  ));
}
