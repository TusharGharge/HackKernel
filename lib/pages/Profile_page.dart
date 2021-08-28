import 'package:flutter/material.dart';
import 'package:karmauncuttingpr/Static.dart';
import 'package:karmauncuttingpr/Widgets/ProfileText.dart';
import 'package:karmauncuttingpr/Widgets/Profilebar.dart';
import 'package:karmauncuttingpr/Widgets/profileWidgets.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  set value(bool value) {}

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    bool value = true;
    return MaterialApp(
      // backgroundColor: Color(0xffF68502),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF68502),
        body: Column(
          children: [
            ProfileBar(),
            Container(
                child: Stack(
              children: [
                Container(
                  height: Size.height * 0.2,
                  color: primary,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Container(
                    width: double.infinity,
                    height: Size.height * 0.754,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          child: Column(
                        children: [
                          Container(
                            height: Size.height * 0.1,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ProfileText(
                                    title: 'Next',
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    //color: Colors.grey,
                                    height: Size.height * 0.04,
                                    width: Size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      //color: Colors.
                                      color: Color(0xffF0F0F0),
                                    ),
                                    child: Fontprofile(
                                      title: 'Tushar',
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  //TextFormField()
                                  ProfileText(
                                    title: 'Location',
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    //color: Colors.grey,
                                    height: Size.height * 0.04,
                                    width: Size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      //color: Colors.
                                      color: Color(0xffF0F0F0),
                                    ),
                                    child: Fontprofile(
                                      title: 'Mumbai',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ProfileText(
                                    title: 'Phone Number',
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    //color: Colors.grey,
                                    height: Size.height * 0.04,
                                    width: Size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      //color: Colors.
                                      color: Color(0xffF0F0F0),
                                    ),
                                    child: Fontprofile(title: '+919167090343'),
                                  ),
                                  SizedBox(height: 10),
                                  //TextFormField()
                                  ProfileText(
                                    title: 'Interest',
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    //color: Colors.grey,
                                    height: Size.height * 0.04,
                                    width: Size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      //color: Colors.
                                      color: Color(0xffF0F0F0),
                                    ),
                                    child: Fontprofile(
                                      title: 'Football',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 150),
                                Transform.scale(
                                  scale: 1.3,
                                  child: Switch.adaptive(
                                      activeColor: Color(0xffF68502),
                                      value: value,
                                      onChanged: (value) {
                                        setState(() {
                                          this.value = value;
                                        });
                                      }),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                ),
                PositionWidgets(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class Fontprofile extends StatelessWidget {
  final String? title;
  const Fontprofile({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title!,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
