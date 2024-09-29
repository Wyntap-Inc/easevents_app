import 'package:easevents_app/constants/ev_styles.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ChatItem extends StatelessWidget {
  const ChatItem({
    required this.images,
    required this.title,
    required this.subtitle,
    required this.notification,
    super.key,
  });

  final String images;
  final String title;
  final String subtitle;
  final String notification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 16, right: 22),
      leading: badges.Badge(
        position: badges.BadgePosition.bottomEnd(bottom: -3, end: -2),
        badgeStyle: const badges.BadgeStyle(
          badgeColor: Colors.green,
          padding: EdgeInsets.all(8),
          elevation: 0,
          shape: badges.BadgeShape.circle,
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.5,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(images),
          maxRadius: 24,
        ),
      ),
      title: Text(
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        title,
      ),
      subtitle: Text(
        subtitle,
        maxLines: 1,
      ),
      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
      subtitleTextStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: EVStyles.textSecondary,
          ),
      trailing: badges.Badge(
        badgeContent: Text(
          notification,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
        badgeStyle: const badges.BadgeStyle(
          shape: badges.BadgeShape.circle,
          padding: EdgeInsets.all(8),
          elevation: 0,
        ),
      ),
    );
  }
}
