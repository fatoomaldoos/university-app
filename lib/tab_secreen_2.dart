import 'package:flutter/material.dart';

import 'module/advertisment_university/advertisment_university_secreen.dart';
import 'module/colleges/colleges_secreen.dart';

class TabSecreen2 extends StatefulWidget {
  @override
  State<TabSecreen2> createState() => _TabSecreenState();
}

class _TabSecreenState extends State<TabSecreen2> {
  final List pages=[
    {
      'page':CollegesSecreen(),
      'title':'CollegesSecreen',
    },
    {
      'page':AdvertismentUniversitySecreen(),
      'title':'AdvertismentUniversitySecreen'
    }
  ];

  int selecteSateeIndex=0;

  void selectPage(int value) {
    setState(() {
      selecteSateeIndex=value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selecteSateeIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selecteSateeIndex,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
      label: ""
           ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: ""
           ),

        ],
      ),
      //drawer: MainDrawer(),
    );
  }
}
