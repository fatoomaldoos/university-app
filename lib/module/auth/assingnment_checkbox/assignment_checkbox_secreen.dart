import 'package:flutter/material.dart';

class AssignmentCheckBox extends StatefulWidget {
  const AssignmentCheckBox({Key? key}) : super(key: key);

  @override
  State<AssignmentCheckBox> createState() => AssignmentCheckBoxState();
}

class AssignmentCheckBoxState extends State<AssignmentCheckBox> {
  bool yy = false, yyx = false, xx = false, xxy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("الشروط المطلوبة ")),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 25,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Column(
        children: [
          CheckboxListTile(
              secondary: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  )),
              contentPadding: EdgeInsets.only(top: 15, right: 20, left: 20),
              title: Text("//////"),
              activeColor: Color.fromARGB(255, 151, 224, 175),
              value: yy,
              selected: yy,
              onChanged: (vale) {
                setState(() {
                  yy = vale as bool;
                });
              }),
          CheckboxListTile(
              secondary: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  )),
              contentPadding: EdgeInsets.only(top: 15, right: 20, left: 20),
              title: Text("++++++++"),
              activeColor: Color.fromARGB(255, 151, 224, 175),
              value: yyx,
              selected: yyx,
              onChanged: (vala) {
                setState(() {
                  yyx = vala as bool;
                });
              }),
          /*     CheckboxListTile(
              secondary: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  )),
              contentPadding: EdgeInsets.only(top: 15, right: 20, left: 20),
              title: Text("kjhgf"),
              activeColor: Color.fromARGB(255, 151, 224, 175),
              value: yy,
              selected: yy,
              onChanged: (vale) {
                setState(() {
                  yy = vale as bool;
                });
              }),*/
          CheckboxListTile(
              secondary: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  )),
              contentPadding: EdgeInsets.only(top: 15, right: 20, left: 20),
              title: Text("{{{{{{{"),
              activeColor: Color.fromARGB(255, 151, 224, 175),
              value: xxy,
              selected: xxy,
              onChanged: (vale) {
                setState(() {
                  xxy = vale as bool;
                });
              }),
          CheckboxListTile(
              secondary: CircleAvatar(
                  backgroundColor: Colors.cyan,
                  child: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  )),
              contentPadding: EdgeInsets.only(top: 15, right: 20, left: 20),
              title: Text("))))))))"),
              activeColor: Color.fromARGB(255, 151, 224, 175),
              value: xx,
              selected: xx,
              onChanged: (vale) {
                setState(() {
                  xx = vale as bool;
                });
              }),
          SizedBox(
            height: 70,
          ),
          Container(
            width: 370,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan,
              ),
              child: Text(
                "تمت تعبئة الحقول",
                style: TextStyle(fontSize: 27, color: Colors.white),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(" %يمكنك تدريس المادة بنسبة 50"),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
