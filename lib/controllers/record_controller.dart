import 'package:get/get.dart';

class RecordController extends GetxController {
  String studentName = 'محمد الأحمد';
  String studentClass = 'الصف الثاني الثانوي | الشعبة الثانية';

  List<String> notes = [
    'الطالب يشارك بانتظام في الحصص.',
    'يحتاج إلى تحسين في مادة الرياضيات.',
    'يتفاعل بشكل جيد مع زملائه.',
  ];

  Map<String, int> grades = {
    'رياضيات': 100,
    'فيزياء': 90,
    'كيمياء': 100,
    'أحياء': 88,
    'لغة عربية': 93,
    'لغة إنجليزية': 47,
    'تاريخ': 100,
    'جغرافيا': 94,
  };

  int absenceCount = 3;
  String selectedSection = '';

  void toggleSection(String section) {
    selectedSection = selectedSection == section ? '' : section;
    update();
  }

  int get totalScore => grades.values.reduce((a, b) => a + b);
  int get maxScore => grades.length * 100;

  double get percentageFromTotal {
    if (maxScore == 0) return 0;
    return (totalScore / maxScore) * 100;
  }
}
