import 'package:flutter/material.dart';

import '../Static.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                            padding: const EdgeInsets.only(top: 1.5, left: 6.0),
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
                      'Profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.54),
                    CircleAvatar(
                        backgroundColor: secondColor,
                        child: IconButton(
                          color: Colors.white,
                          icon: Center(
                            child: Icon(
                              Icons.create_outlined,
                            ),
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
    );
  }
}
