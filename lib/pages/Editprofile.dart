import 'package:flutter/material.dart';
import 'package:karmauncuttingpr/Static.dart';
import 'package:karmauncuttingpr/Widgets/FontProfile.dart';
import 'package:karmauncuttingpr/Widgets/ProfileText.dart';
import 'package:karmauncuttingpr/Widgets/Profilebar.dart';
import 'package:karmauncuttingpr/Widgets/profileWidgets.dart';
import 'package:karmauncuttingpr/pages/Karma_page.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      color: primary,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: secondColor,
                                child: IconButton(
                                  color: Colors.white,
                                  icon: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 1.5, left: 6.0),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                )),
                            SizedBox(width: 10),
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.42),
                            CircleAvatar(
                                backgroundColor: secondColor,
                                child: IconButton(
                                  color: Colors.white,
                                  icon: Center(
                                    child: Icon(Icons.save_outlined),
                                  ),
                                  onPressed: () {},
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Positioned(
                    //   bottom: 0,
                    //   right: 0,
                    //   left: 0,
                    //   child: CircleAvatar(
                    //     radius: 70,
                    //     backgroundImage: AssetImage('asset/tushar.jpeg'),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
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
                          ),
                          SizedBox(height: 180),
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
                                    color: primary,
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'SAVE',
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
