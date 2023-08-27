import 'package:flutter/material.dart';
import 'package:flutter_app_test/tab_secreen_controller.dart';
import 'module/auth/sign_in/sign_in_secreen.dart';
import 'module/universities/university_secreen.dart';
import 'package:get/get.dart';
class TabSecreen extends StatefulWidget {
  @override
  State<TabSecreen> createState() => _TabSecreenState();
}

class _TabSecreenState extends State<TabSecreen> {
  TabSecreenController tabSecreenController=Get.put(TabSecreenController());

  final List pages=[
    {
      'page':UniversitySecreen(),
      'title':'universitySecreen',
    },
    {

      'page':SignInSecreen(),
      'title':'SignInSecreen'
    },

  ];


  int selecteSateeIndex=0;

  void selectPage(int value) {
    setState(() {
      selecteSateeIndex=value;
    });
  }

  @override
  Widget build(BuildContext context) {

      print('token is not null');
      print(tabSecreenController.secureStorage.read('tokn'));
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
                icon: Icon(Icons.school),
                label: "school"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "people"
            ),

          ],
        ),
        //drawer: MainDrawer(),
      );
      }

  }

