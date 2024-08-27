import 'package:easevents_app/providers/loader.dart';
import 'package:easevents_app/screens/message_screen/ev_chat_list_screen.dart';
import 'package:easevents_app/screens/register_screen/register_otp_screen.dart';
import 'package:easevents_app/screens/register_screen/success_screen.dart';
import 'package:easevents_app/services/token_storage.dart';
import 'package:provider/provider.dart';
import 'exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  bool userIsLoggedIn = await TokenStorage().isUserLoggedIn();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoaderProvider()),
      ],
      child: MyApp(initialRoute: userIsLoggedIn ? 'evBottomNav' : '/'),
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({required this.initialRoute, super.key});

  String initialRoute = '/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      initialRoute: initialRoute,
      routes: {
        '/': (context) => const EvChatListSCreen(),
        'evBottomNav': (context) => const EVBottomNavigationBar(),
        'success': (context) => const SuccessScreen(),
        'otp': (context) => RegisterOtpScreen(),
      },
    );
  }
}
