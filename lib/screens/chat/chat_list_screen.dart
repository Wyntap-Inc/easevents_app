import 'package:easevents_app/exports.dart';
import 'package:easevents_app/screens/chat/chat_item.dart';
import 'package:easevents_app/screens/chat/chat_screen.dart';

class ConversationListScreen extends StatelessWidget {
  const ConversationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Message',
          style: TextStyle(
            color: EVStyles.primaryColor,
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
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                itemCount: chatDummyData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(
                            title: chatDummyData[index].name,
                          ),
                        ),
                      );
                    },
                    child: ChatItem(
                      images: chatDummyData[index].image,
                      title: chatDummyData[index].name,
                      subtitle:
                          '${chatDummyData[index].messages} • ${chatDummyData[index].formatTime()}',
                      notification:
                          chatDummyData[index].notification.toString(),
                    ),
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
