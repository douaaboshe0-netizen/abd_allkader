import 'package:get/get.dart';
import '../models/announcement_model.dart';

class StudentController extends GetxController {
  final List<AnnouncementModel> allAnnouncements = [
    AnnouncementModel(
      title: '📢 إعلان تجريبي طويل',
      description: '''
يسر إدارة ثانوية عبد القادر بدران أن تعلن عن إطلاق برنامج جديد لدعم الطلاب المتفوقين في المواد العلمية
يتضمن البرنامج جلسات مراجعة أسبوعية، ونشاطات إثرائية، وتوجيه أكاديمي فردي لكل طالب
سيبدأ البرنامج اعتبارًا من الأسبوع القادم، ويستمر حتى نهاية الفصل الدراسي الحالي
''',
      dateMiladi: '30 أكتوبر 2025 م',
      dateHijri: '16 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '📚 دورة تقوية في اللغة العربية',
      description: '''
دورة مجانية تشمل مراجعة القواعد والتعبير والتحليل الأدبي
المواعيد: الثلاثاء والخميس 2:00 - 4:00 مساءً
''',
      dateMiladi: '5 نوفمبر 2025 م',
      dateHijri: '13 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '📊 نتائج الفصل الأول',
      description: 'تم توزيع نتائج الفصل الأول على الطلاب في القاعة الرئيسية',
      dateMiladi: '10 كانون الثاني 2025 م',
      dateHijri: '28 جمادى الآخرة 1446 هـ',
    ),
    AnnouncementModel(
      title: '📅 مراجعة الإدارة',
      description: 'على الطالب أحمد الحموي مراجعة الإدارة غداً',
      dateMiladi: '1 نوفمبر 2025 م',
      dateHijri: '10 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '📖 مسابقة حفظ القرآن الكريم',
      description: 'تبدأ المسابقة يوم الأحد القادم، التسجيل مفتوح حتى الخميس',
      dateMiladi: '3 نوفمبر 2025 م',
      dateHijri: '11 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '🎨 معرض الفنون المدرسي',
      description: 'ندعوكم لحضور معرض أعمال الطلاب الفنية يوم الأربعاء',
      dateMiladi: '6 نوفمبر 2025 م',
      dateHijri: '14 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '🧪 نشاط علمي للصف التاسع',
      description: 'رحلة إلى مركز الأبحاث العلمية يوم الجمعة القادم',
      dateMiladi: '7 نوفمبر 2025 م',
      dateHijri: '15 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '📎 توزيع الكتب المدرسية',
      description: 'يبدأ توزيع الكتب يوم الإثنين القادم في المكتبة',
      dateMiladi: '8 نوفمبر 2025 م',
      dateHijri: '16 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '📌 اجتماع أولياء الأمور',
      description: 'الاجتماع السنوي لأولياء الأمور يوم السبت في القاعة الكبرى',
      dateMiladi: '9 نوفمبر 2025 م',
      dateHijri: '17 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '📘 ورشة كتابة إبداعية',
      description: 'ورشة للطلاب المهتمين بالكتابة الأدبية يوم الإثنين',
      dateMiladi: '10 نوفمبر 2025 م',
      dateHijri: '18 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '📷 يوم التصوير المدرسي',
      description: 'تصوير الصفوف سيتم يوم الثلاثاء القادم',
      dateMiladi: '11 نوفمبر 2025 م',
      dateHijri: '19 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '🎤 مسابقة الخطابة',
      description: 'المسابقة تقام يوم الخميس، التسجيل مفتوح الآن',
      dateMiladi: '12 نوفمبر 2025 م',
      dateHijri: '20 ربيع الآخر 1447 هـ',
    ),
    AnnouncementModel(
      title: '📂 تسليم المشاريع',
      description: 'آخر موعد لتسليم مشاريع العلوم يوم الجمعة',
      dateMiladi: '13 نوفمبر 2025 م',
      dateHijri: '21 ربيع الآخر 1447 هـ',
    ),
  ];

  List<AnnouncementModel> get latestAnnouncements {
    return allAnnouncements.take(2).toList();
  }

  List<AnnouncementModel> get oldAnnouncements {
    return allAnnouncements.length > 2 ? allAnnouncements.sublist(2) : [];
  }
}
