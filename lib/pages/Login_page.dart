import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karmauncuttingpr/Static.dart';
import 'package:karmauncuttingpr/pages/Karma_page.dart';

//import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primary));
    bool _isObscure = true;
    var Size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              height: Size.height * 0.01,
              color: Color(0xffF68510),
            ),
            Container(
              height: Size.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage(
                      'asset/karma.jpeg',
                    )),
              ),
              //child: Container(color: Colors.black),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: Size.width * 0.8,
                height: Size.height * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xffF0F0F0),
                ),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF0F0F0)),
                    ),
                    hintText: 'Phone Number',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: Size.width * 0.8,
                height: Size.height * 0.07,
                decoration: BoxDecoration(
                  color: Color(0xffF0F0F0),
                ),
                child: TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF0F0F0)),
                    ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 220.0),
                  child: Text('Forgot Password',
                      style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => KarmaPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: Size.width * 0.4,
                    height: Size.height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //color: Colors.
                      color: Color(0xff53E40B),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Align(
                alignment: Alignment.center,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Not a Member yet?',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(' Click Here',
                      style: TextStyle(
                        color: primary,
                        fontSize: 17,
                      ))
                ]),
              ),
            )
          ],
        ));
  }
}
