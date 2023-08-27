import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../teacher_profile/teacher_profile_secreen.dart';

class TeacherExperianceSecreen extends StatefulWidget {
  const TeacherExperianceSecreen({Key? key}) : super(key: key);

  @override
  State<TeacherExperianceSecreen> createState() => TeacherExperianceSecreenState();
}

class TeacherExperianceSecreenState extends State<TeacherExperianceSecreen> {
  void addItemtoList() {
    setState(() {
      entr.insert(0, 'ji');
      entr.insert(1, 'pi');
      entr.insert(2, 'oi');
      type.insert(0, ' الخبرة :');
      type.insert(1, 'الاسم العلمي للمادة :');
      type.insert(2, 'عدد سنوات الخبرة: ');
    });
  }

  final List<String> entr = ['num1', 'num2', 'num3'];
  final List<String> type = [
    'الخبرة :',
    'الاسم العلمي للمادة :',
    ' عدد سنوات الخبرة: '
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 25,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Color.fromARGB(255, 93, 220, 236),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
                onPressed: () {
                 Get.to(TeacherProfileSecreen());
                },
                child: Text(
                  'submit',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: entr.length,
        itemBuilder: (context, index) {
          return Container(
            color: Color.fromARGB(255, 226, 154, 149),
            height: 50,
            margin: EdgeInsets.all(25),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: type[index],
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.all(10)),
              textDirection: TextDirection.rtl,
              keyboardType: TextInputType.text,
              style: TextStyle(),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        //    crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new FloatingActionButton(
              elevation: 0.0,
              child: new Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 44, 202, 202),
              onPressed: () {
                addItemtoList();
              }),
        ],
      ),
    );
  }
}
