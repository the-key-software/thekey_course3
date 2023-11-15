import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text("الإشعارات")),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("عنوان الإشعار ${index + 1}"),
              subtitle: Text("محتوى الإشعار ${index + 1}"),
              leading: const Icon(Icons.notifications_outlined),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                print("Notification $index");
              },
            );
          },
        ),
      ),
    );
  }
}
