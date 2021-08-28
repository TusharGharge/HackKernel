import 'package:flutter/material.dart';
import 'package:karmauncuttingpr/pages/Login_page.dart';
import 'package:karmauncuttingpr/pages/Profile_page.dart';

import '../Static.dart';

class KarmaToBar extends StatelessWidget {
  const KarmaToBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        child: Column(
          children: [
            Container(
              color: primary,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 35,
                  right: 30,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: secondColor,
                        child: IconButton(
                          color: Colors.white,
                          icon: Padding(
                            padding: const EdgeInsets.only(top: 1.5, left: 6.0),
                            child: Icon(
                              Icons.arrow_back_ios,
                            ),
                          ),
                          onPressed: () {},
                        )),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: Text(
                        'Karma Drives',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                    Container(
                      //color: Colors.grey,
                      height: Size.height * 0.04,
                      width: Size.width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        //color: Colors.
                        color: Color(0xffF0F0F0),
                      ),
                      child: Center(
                          child: Text('MY DRIVES',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 11))),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                //color: Colors.grey,
                height: Size.height * 0.06,
                width: Size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  //color: Colors.
                  color: Color(0xffF0F0F0),
                ),
                child: Container(
                  child: Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Search here...',
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      SizedBox(width: Size.width * 0.38),
                      CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.search_rounded,
                          )),
                    ],
                  ),
                )),
            SizedBox(
              height: Size.height * 0.01,
            )
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
    );
  }
}
