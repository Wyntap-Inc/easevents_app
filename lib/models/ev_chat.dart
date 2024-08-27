import 'package:intl/intl.dart';

final dateFormat = DateFormat('yyyy-MM-dd');
final timeFormat = DateFormat('HH:mm');

class EvChat {
  const EvChat({
    required this.id,
    required this.name,
    required this.messages,
    required this.time,
    required this.date,
    required this.image,
    required this.activeStatus,
    required this.notification,
  });

  final int id;
  final String name;
  final String messages;
  final DateTime time;
  final DateTime date;
  final String image;
  final bool activeStatus;
  final int notification;

  factory EvChat.fromJson(Map<String, dynamic> json) {
    return EvChat(
      id: json['id'],
      name: json['name'],
      messages: json['messages'],
      time: json['time'],
      date: json['date'],
      image: json['image'],
      activeStatus: json['activeStatus'],
      notification: json['notification'],
    );
  }

  String formatDate() {
    return dateFormat.format(date);
  }

  String formatTime() {
    return timeFormat.format(time);
  }
}
