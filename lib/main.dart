import 'package:flutter_app_test/getx_binding/add_certificate_binding.dart';
import 'package:flutter_app_test/getx_binding/view_teacher_binding.dart';
import 'package:flutter_app_test/module/view_teacher/view_teacher_secreen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './getx_binding/advertisment_university_binding.dart';
import './getx_binding/certificate_section_binding.dart';
import './getx_binding/college_detail_binding.dart';
import './getx_binding/practical_assignment_binding.dart';
import './getx_binding/section_binding.dart';
import './getx_binding/section_single_controller.dart';
import './getx_binding/sign_in_binding.dart';
import './getx_binding/sign_up_binding.dart';
import './getx_binding/subjects_section_binding.dart';
import './getx_binding/teacher_profile_binding.dart';
import './getx_binding/university_binding.dart';
import './module/advertisments_colleges/advertisment_secreen.dart';
import './module/assignment/thiritical_assignment_secreen.dart';
import './module/certificate_colleges/certificate_college_secreen.dart';
import './module/classes/classes_secreen.dart';
import './module/colleges/colleges_details_secreen.dart';
import './module/colleges/colleges_secreen.dart';
import './module/confairm_techer/confairm_techer_binding.dart';
import './module/confairm_techer/confairm_techer_secreen.dart';
import './module/general_assignments/general_assignments_secreen.dart';
import './module/login_techer/login_techer_secreen.dart';
import './module/sections/section_details_secreen.dart';
import './module/sections/section_secreen.dart';
import './module/shared_assignment/shared_assignment_secreen.dart';
import './module/subjects/subjects_section_secreen.dart';
import './module/universities/university_controller.dart';
import './tab_secreen.dart';
import './tab_secreen_2.dart';
import './tests/test1.dart';
import 'getx_binding/advertisment_binding.dart';
import 'getx_binding/certificate_colleges_binding.dart';
import 'getx_binding/colleges_binding.dart';
import 'getx_binding/splash_binding.dart';
import 'getx_binding/subject_class_binding.dart';
import 'getx_binding/tab_secreen_binding.dart';
import 'getx_binding/teachers_binding.dart';
import 'getx_binding/thiritical_assignment_binding.dart';
import 'module/Splash/splash_secreen.dart';
import 'module/advertisment_university/advertisment_university_secreen.dart';
import 'module/assignment/practical_assignment_secreen.dart';
import 'module/auth/add_teacher_certificate/add_teacher_certificate_secreen.dart';
import 'module/auth/assingnment_checkbox/assignment_checkbox_secreen.dart';
import 'module/auth/sign_in/sign_in_secreen.dart';
import 'module/auth/sign_up/sign_up_secreen.dart';
import 'module/auth/teacher_display/teacher_display_secreen.dart';
import 'module/auth/teacher_edit_profile/edit_profile_secreen.dart';
import 'module/auth/teacher_experiance/teacher_experiance_secreen.dart';
import 'module/auth/teacher_profile/teacher_profile_secreen.dart';
import 'module/auth/techer_certificate/teacher_certificate_secreen.dart';
import 'module/certificate_sections/cerificate_section_secreen.dart';
import 'module/subjects/subject_class_detail_secreen.dart';
import 'module/subjects/subject_section_detail_secreen.dart';
import 'module/universities/university_secreen.dart';

void main() {
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/SplashSecreen',
      getPages: [
        GetPage(name: '/ViewTeacherSecreen', page: ()=>ViewTeacherSecreen(),binding: ViewTeacherBinding()),
        GetPage(name: '/AddTeacherCertificateSecreen', page: ()=>AddTeacherCertificateSecreen(),binding: AddCertificateBinding()),
        GetPage(name: '/SplashSecreen', page: ()=>SplashSecreen(),binding: SplashBinding()),
        GetPage(name: '/signInSecreen', page: ()=>SignInSecreen(),binding: SignInBinding()),
        GetPage(name: '/SignUpSecreen', page: ()=>SignUpSecreen(),binding:SignUpBinding() ),
        GetPage(name: '/TeacherProfileSecreen', page: ()=>TeacherProfileSecreen(),binding:TeacherProfileBinding() ),
        GetPage(name: '/TeacherDisplaySecreen', page: ()=>TeacherDisplaySecreen(),binding:TeachersBinding() ),
        GetPage(name: '/SubjectClassDetailSecreen', page: ()=>SubjectClassDetailSecreen(),binding:SubjectClassBinding() ),
        GetPage(name: '/PracticalAssignmentSereen', page: ()=>PracticalAssignmentSereen(),binding:PracticalAssignmentBinding() ),
        GetPage(name: '/ThiriticalAssignmentSereen', page: ()=>ThiriticalAssignmentSereen(),binding: ThiricalAssignmentBinding()),
        GetPage(name: '/SubjectSecreenDetailSecreen', page: ()=>SubjectSecreenDetailSecreen()),
        GetPage(name: '/university', page: ()=>UniversitySecreen(),binding: UniversityBinding()),
        GetPage(name: '/colleges', page: ()=>CollegesSecreen(),binding: CollegesBinding()),
        GetPage(name: '/collegesDetails', page: ()=>CollegesDetailsSecreen(),binding: CollegeBinding()),
        GetPage(name: '/sectionSecreen', page: ()=>SectionSecreen(),binding: SectionsBinding()),
        GetPage(name: '/sectionDetailSecreen', page: ()=>SectionDetailsSecreen(),binding: SectionSingleBinding()),
        GetPage(name: '/subjectsSection', page: ()=>SubjectsSecreen(),binding: SubjectsSectionBinding()),
        GetPage(name: '/classes', page: ()=>SubjectsSecreen(),binding: SubjectsSectionBinding()),
        GetPage(name: '/certificateCollegesSecreen', page: ()=>CertificateCollegesSecreen(),binding: CertificateCollegesBinding()),
        GetPage(name: '/certificateSectionSecreen', page: ()=>CertificateSectionSecreen(),binding: CertificateSectionBinding()),
        GetPage(name: '/certificateClassSecreen', page: ()=>CertificateSectionSecreen(),binding: CertificateSectionBinding()),
        GetPage(name: '/advertismentCollegesSecreen', page: ()=>AdvertismentCollegesSecreen(),binding: AdvertismentBinding()),
        GetPage(name: '/sectionDetailsSecreen', page: ()=>SectionDetailsSecreen()),
        GetPage(name: '/advertismentSecreen', page: ()=>AdvertismentCollegesSecreen()),
        GetPage(name: '/advertismentUniversitySecreen', page: ()=>AdvertismentUniversitySecreen(),binding: AdvertismentUniversityBinding()),
        GetPage(name: '/certificateCollegesSecreen', page: ()=>CertificateCollegesSecreen()),
        GetPage(name: '/CertificateSectionSecreen', page: ()=>CertificateSectionSecreen()),
        GetPage(name: '/subjectsSecreen', page: ()=>SubjectsSecreen()),
        GetPage(name: '/classesSecreen', page: ()=>ClassesSecreen()),
        GetPage(name: '/generalAssignmentSecreen', page: ()=>GeneralAssignmentSecreen()),
        GetPage(name: '/sharedAssignmentSecreen', page: ()=>SharedAssignmentSecreen()),
        GetPage(name: '/sectionSecreen', page: ()=>SectionSecreen()),
        GetPage(name: '/module.confairm_techer', page: ()=>ConfairmTecherSecreen(),binding: ConfairmTecherBinding()),
        GetPage(name: '/module.login_techer_secreen', page: ()=>LogInTecherSecreen()),
        GetPage(name: '/tabSecreen', page: ()=>TabSecreen(),binding:TabSecreenBinding()),
        GetPage(name: '/tabSecreen2', page: ()=>TabSecreen2(),bindings: [UniversityBinding(),CollegesBinding()]),
/////////////////////////////
        GetPage(name: '/assignmentCheckBoxSecreen', page: ()=>AssignmentCheckBox()),
        GetPage(name: '/TeacherDisplaySecreen', page: ()=>TeacherDisplaySecreen()),
        GetPage(name: '/EditProfileSecreen', page: ()=>EditProfileSecreen()),
        GetPage(name: '/TeacherExperianceSecreen', page: ()=>TeacherExperianceSecreen()),
        GetPage(name: '/TeacherProfileSecreen', page: ()=>TeacherProfileSecreen()),
        ],
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      title: 'دليل الجامعات السورية',
      theme: ThemeData(
        //primarySwatch:  buildMaterialColor(Color(0xFFff0f39)),
     primarySwatch: Colors.pink,
        //   primaryColor: Colors.tealAccent,
        accentColor: Colors.grey[500],
        //accentColor: Colors.cyanAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        //  canvasColor:buildMaterialColor(Color(0xFF5cfffa)),
          textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1),
            fontFamily:'Arabic',
          ),
          bodyText2: TextStyle(color: Color.fromRGBO(20, 50, 50, 1),
            fontFamily:'Arabic',
          ),
          subtitle1: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily:'Arabic',
          ),
          subtitle2: TextStyle(
            fontFamily:'Arabic',
          ),
        ),
      ),
    );
  }
}
