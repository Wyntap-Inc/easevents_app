import 'package:easevents_app/providers/consumer_login_account_provider.dart';
import 'package:easevents_app/providers/loader.dart';
import 'package:easevents_app/screens/register_screen/register_otp_screen.dart';
import 'package:easevents_app/screens/register_screen/register_success_screen.dart';
import 'package:easevents_app/services/local_storage_manager.dart';
import 'package:provider/provider.dart';
import 'exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final tokenStorage = LocalStorageManager();

  bool userIsLoggedIn = await tokenStorage.isUserLoggedIn();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoaderProvider()),
        ChangeNotifierProvider(
            create: (_) => ConsumerAccountProvider(tokenStorage)),
      ],
      child: MyApp(initialRoute: userIsLoggedIn ? 'evBottomNav' : '/'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({required this.initialRoute, super.key});

  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: EvAppTheme.lightTheme,
      initialRoute: initialRoute,
      routes: {
        '/': (context) => const WelcomeScreen(),
        'evBottomNav': (context) => const EVBottomNavigationBar(),
        'success': (context) => const RegisterSuccessScreen(),
        'otp': (context) => RegisterOtpScreen(),
        'profile': (context) => const ConsumerProfileScreen(),
      },
    );
  }
}
