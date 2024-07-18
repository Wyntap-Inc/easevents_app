import 'package:easevents_app/providers/loader.dart';
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
        '/': (context) => const WelcomeScreen(),
        'evBottomNav': (context) => const EVBottomNavigationBar(),
      },
    );
  }
}
