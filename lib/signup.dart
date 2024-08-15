import 'package:flutter/material.dart';
import 'login.dart'; // Update with the correct path

class MySignup extends StatefulWidget {
  const MySignup({Key? key}) : super(key: key);

  @override
  _MySignupState createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container (uncomment if needed)
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("lib/assets/images/resereat.png"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          // Logo at the top
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 50), // Adjust padding as needed
              child: Image.asset(
                'lib/assets/images/resereat.png', // Update with your logo image path
                height: 120, // Adjust the height as needed
              ),
            ),
          ),
          // Text at the bottom
          Container(
            padding: const EdgeInsets.only(top: 680, left: 60, right: 50),
            child: Text(
              'All Rights Reserved. ReservEat Inc. (2024)',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          // Signup Container
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Center(
              child: Container(
                height: 480,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFFDD301), // Apply the hex color code here
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.only(top: 40, left: 40),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only( left: 30),
                      child: Text(
                        'Create an Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        'UserName',
                        style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60, right: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'john',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 140),
                      child: Text(
                        'Email',
                        style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 160, right: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'xyz@domain.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 240),
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 260, right: 50),
                      child: TextFormField(

                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: '******',
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 340,right:50),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button's action here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // Change the button's background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(160.0, 50.0),
                          onPrimary: Colors.white, // Change the text color
                          elevation: 5, // Change the button's elevation
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_right_outlined,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 390),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an Account?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const MyLogin()),
                              );
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
