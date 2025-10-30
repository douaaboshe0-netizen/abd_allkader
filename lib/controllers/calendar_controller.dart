import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/calendar_controller.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalendarController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text('📅 التقويم'),
          backgroundColor: Colors.green,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.today),
              tooltip: 'العودة لليوم',
              onPressed: controller.resetToToday,
            ),
          ],
        ),
        body: Column(
          children: [
            // 🔄 التنقل بين الأشهر
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: controller.previousMonth,
                  ),
                  Text(
                    controller.monthYear,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: controller.nextMonth,
                  ),
                ],
              ),
            ),

            // 🖼️ صورة الشهر أو الحديث
            GestureDetector(
              onTap: controller.toggleImage,
              child: Container(
                height: 150,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Image.asset(
                  controller.showHadith
                      ? controller.hadithForMonth
                      : controller.imageForMonth,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // 📆 جدول الأيام
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  // أيام الأسبوع
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: controller.weekDays
                        .map(
                          (day) => Expanded(
                            child: Center(
                              child: Text(
                                day,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 8),

                  // أيام الشهر
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.daysGrid.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemBuilder: (context, index) {
                      final date = controller.daysGrid[index];
                      final isToday = controller.isToday(date);
                      return Container(
                        decoration: BoxDecoration(
                          color: date.year == 0
                              ? Colors.transparent
                              : isToday
                              ? Colors.red[200]
                              : Colors.green[50],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        child: date.year == 0 ? null : Text('${date.day}'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
