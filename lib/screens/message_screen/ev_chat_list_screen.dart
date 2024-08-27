import 'package:easevents_app/exports.dart';
import 'package:easevents_app/screens/message_screen/ev_user_message.dart';

class EvChatListSCreen extends StatelessWidget {
  const EvChatListSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Message',
          style: TextStyle(
            color: AppStyles.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () async {},
              icon: Icon(PhosphorIcons.magnifyingGlass()),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: chatDummyData.length,
                itemBuilder: (context, index) {
                  return EvUserMessageListTile(
                    onTap: () async {},
                    images: chatDummyData[index].image,
                    title: chatDummyData[index].name,
                    subtitle:
                        '${chatDummyData[index].messages} • ${chatDummyData[index].formatTime()}',
                    notification: chatDummyData[index].notification.toString(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
