import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karmauncuttingpr/Widgets/KarmaTopBar.dart';
import 'package:karmauncuttingpr/Widgets/LIstViewWidget.dart';

import '../Static.dart';

class KarmaPage extends StatefulWidget {
  const KarmaPage({Key? key}) : super(key: key);

  @override
  _KarmaPageState createState() => _KarmaPageState();
}

class _KarmaPageState extends State<KarmaPage> {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: primary,
        body: Column(
          children: [
            KarmaToBar(),
            SizedBox(height: 17),
            Expanded(
              child: Container(
                  width: double.infinity,
                  height: Size.height * 7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return ListViewWidget();
                      })),
            ),
          ],
        ));
  }
}
