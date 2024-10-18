import 'package:easevents_app/exports.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatScreen extends StatefulWidget {
  const ChatScreen({required this.title, super.key});

  final String title;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

class _ChatScreenState extends State<ChatScreen> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Chat(
        theme: const DefaultChatTheme(
          primaryColor: EVStyles.primaryColor,
          inputBackgroundColor: EVStyles.primaryColor,
          inputBorderRadius: BorderRadius.zero,
          inputContainerDecoration: BoxDecoration(),
          inputTextDecoration: InputDecoration(
            contentPadding: EdgeInsets.all(16),
          ),
        ),
        showUserAvatars: true,
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
      ),
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }
}
