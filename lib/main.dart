import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsAppClone(),
  ));
}

class WhatsAppClone extends StatefulWidget {
  @override
  _WhatsAppCloneState createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp Business",
            style: TextStyle(fontSize: 22),
          ),
          backgroundColor: Color(0xff325665),
          actions: [
            Icon(Icons.search),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                FontAwesomeIcons.ellipsisV,
                size: 16,
              ),
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUES",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),

        body: ListView(
          children: [
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
            MyChartUser(),
          ],
        ),

        ///////////////////////////////////////////
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff14D069),
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}

class MyChartUser extends StatelessWidget {
  const MyChartUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),

      height: 100,
      // color: Colors.grey,
      child: Center(
          child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey,
            child: Center(
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text("Ema National"),
                    Text("Ok will come")
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text("09:50 am"),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xff14D069),
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )
          //  ListTile(
          //   title: Text("Ema National"),
          //   subtitle: Text("Ok will come"),
          //   leading: CircleAvatar(
          //     backgroundColor: Colors.grey,
          //   ),
          // ),
          ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
