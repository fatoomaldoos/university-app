import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
     child:   Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Text("دليل الجامعات السورية",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,

                ),),
              alignment: Alignment.centerLeft,
            ),

            SizedBox(height: 20,),

            buildListTile(context,"الجامعات",Icon(Icons.school),'/tabSecreen'),

          ],
        )
    );
  }

  ListTile buildListTile(BuildContext context,String title,Icon myIcon ,String pageName) {
    return ListTile(
            leading:myIcon ,
            title: Text("الجامعات",style: TextStyle(
              fontSize: 20,
              fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
              fontWeight: FontWeight.bold,
            ),
            ),
            onTap: (){
              Get.toNamed(pageName);
            },
          );
  }
}
