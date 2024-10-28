import 'package:easevents_app/exports.dart';

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
            create: (_) => ConsumerLoginAccountProvider(tokenStorage)),
        ChangeNotifierProvider(
            create: (_) => GoogleSigninRedirectURLProvider()),
        ChangeNotifierProvider(create: (_) => ResponseProvider()),
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
