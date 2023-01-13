import 'package:flutter/material.dart';

import 'first_screen.dart';

class TeamDetails extends StatefulWidget {
  static const String routeName = 'teamdetails';

  @override
  State<TeamDetails> createState() => _TeamDetailsState();
}

class _TeamDetailsState extends State<TeamDetails> {
  int selectedindex = 1;
  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.of(context).pushNamed(FirstScreen.routeName);
    } else if (index == 1) {
      Navigator.of(context).pushNamed(TeamDetails.routeName);
      ;
    }
    selectedindex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFECDB),
      appBar: AppBar(
          title: Text(
            'TEAM 4',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Color(0xFFB7935F)),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: selectedindex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_tree), label: 'Mode'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Details'),
          ],
        ),
      ),
      body: Container(margin: EdgeInsets.all(18),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "أرسانيوس محروس شوقي     19015394",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                )
              ],
            ),
            SizedBox(height: 30
              ,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "أمير عزت ثابت سمعان           19015469",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                )
              ],
            ),  SizedBox(height: 30
              ,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "روفائيل يوسف وجدي           19015694",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                )
              ],
            ),  SizedBox(height: 30
              ,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "مينا جورج نبيل عزيز            19016759",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                )
              ],
            ),  SizedBox(height: 30
              ,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "مينا صلاح كامل راغب           19016761",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
