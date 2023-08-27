import 'package:flutter/material.dart';

class EditProfileSecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Color.fromRGBO(24, 255, 255, 1),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          centerTitle: true,
          title: Text("تعديل الملف الشخصي  "),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
        ),
        body: Container(
          padding: EdgeInsets.only(
            left: 15,
            top: 20,
            right: 15,
          ),
          child: GestureDetector(
            // onTap: () {
            //   FocusScope.of(context).unfocus();
            // },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color: Color.fromARGB(255, 243, 241, 241)),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 15,
                                  color: Colors.black.withOpacity(0.1))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/photos.jpg'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(24, 255, 255, 1),
                            //        color: Theme.of(context).,
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 4,
                                //      color: Color.fromARGB(255, 33, 243, 233),
                                color: Colors.white),
                          ),
                          //i dont now
                          child: Center(
                            child: Icon(Icons.edit,
                                //  color: Color.fromARGB(255, 15, 4, 11),
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(child: Text("reem ajjawi")),
                TextFormField(
                  decoration: (const InputDecoration(labelText: 'كلمة السر')),
                  initialValue: '123456789',
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: 'TY@GMAIL.COM',
                  decoration: (const InputDecoration(labelText: 'الإيميل')),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: 'البرامكة',
                  cursorColor: Color.fromRGBO(24, 255, 255, 1),
                  decoration: (const InputDecoration(labelText: 'عنوان السكن')),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration:
                  (const InputDecoration(labelText: 'رقم الموبايل')),
                  initialValue: '092753673',
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: ' الهندسة المعلوماتية اختصاص ذكاء صنعي',
                  decoration: (InputDecoration(labelText: 'الشهادات')),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: ' اجازة ',
                  decoration: (InputDecoration(labelText: 'الدرجة')),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: ' 1997 ',
                  decoration: (InputDecoration(labelText: 'تاريخ المنح')),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: 'خبرة في الاوتومات ',
                  decoration: (InputDecoration(labelText: 'الخبرات')),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: 'تدريس 3 سنوات ',
                  decoration: (InputDecoration(labelText: 'عدد السنوات')),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  initialValue: 'اللغات الصورية',
                  decoration:
                  (InputDecoration(labelText: 'الاسم العلمي للمادة')),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "إلغاء",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2,
                          color: Color.fromRGBO(24, 255, 255, 1),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "حفظ",
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2,
                              color: Color.fromARGB(255, 226, 232, 236)),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(24, 255, 255, 1),
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
