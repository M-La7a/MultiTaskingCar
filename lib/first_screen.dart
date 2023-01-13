import 'package:car_project/team_details.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class FirstScreen extends StatefulWidget {
  static const String routeName = 'firstScreen';

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int selectedindex = 0;
  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.of(context).pushNamed(FirstScreen.routeName);
    }
    else if(index == 1) {
      Navigator.of(context).pushNamed(TeamDetails.routeName);;
    }
    selectedindex = index;
    setState(() {});
  }
  @override
  Color on = Colors.greenAccent;
  Color off = Color(0xff5D9CEC);
  int counter = 0;
  bool changeLineFollow = false;
  bool changeSelfBalance = false;
  bool changeAvoid = false;
  bool changeManual = false;

  DatabaseReference ref = FirebaseDatabase.instance.ref("ESP");

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffDFECDB),
      appBar: AppBar( title: Text(
        'TEAM 4',
        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
      ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent
      ),
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(18),
                child: ElevatedButton(
                  onPressed: () {
                    changeLineFollow = !changeLineFollow;
                    ref.update({
                      "LineFollow": "$changeLineFollow",
                    });
                    setState(() {});
                  },
                  child: Text(
                    'Line Follow',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: changeLineFollow ? on : off),
                ),
              ),
              Container(
                margin: EdgeInsets.all(18),
                child: ElevatedButton(
                  onPressed: () {
                    changeSelfBalance = !changeSelfBalance;
                    ref.update({
                      "SelfBalance": '$changeSelfBalance',
                    });
                    setState(() {});
                  },
                  child: Text(
                    'Self Balance',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: changeSelfBalance ? on : off),
                ),
              ),
              Container(
                margin: EdgeInsets.all(18),
                child: ElevatedButton(
                  onPressed: () {
                    changeAvoid = !changeAvoid;
                    ref.update({
                      "Avoid": "$changeAvoid",
                    });
                    setState(() {});
                  },
                  child: Text(
                    'Avoid',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  style:
                      ElevatedButton.styleFrom(primary: changeAvoid ? on : off),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
  List<Widget>tab =[
    FirstScreen(),TeamDetails()
  ];
}
