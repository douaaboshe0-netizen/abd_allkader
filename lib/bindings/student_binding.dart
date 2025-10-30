import 'package:get/get.dart';
import '../controllers/student_controller.dart';

class StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StudentController());
  }
}