import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_app_check/firebase_app_check.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shelfx/function/hex_converter.dart';
import 'firebase_options.dart';

import 'package:shelfx/screens/splash_screen.dart';
import 'package:shelfx/screens/auth/login_screen.dart';
import 'package:shelfx/screens/auth/register_screen.dart';
import 'package:shelfx/screens/stores/stores_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDO4z1W9wYiUQ81GBNKpwxQCgYsgdxVRv0",
            appId: "1:565842489196:web:a20d841b39cd1cf994cd49",
            messagingSenderId: "565842489196",
            projectId: "shelf-cloud"));
  }

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'Jost',
          scaffoldBackgroundColor: const Color(0xffFAFAFA),
          primarySwatch: const MaterialColor(0xff58539B, {
            50: Color(0xffeeeef5),
            100: Color(0xffdeddeb),
            200: Color(0xffcdcbe1),
            300: Color(0xffbcbad7),
            400: Color(0xffaca9cd),
            500: Color(0xff9b98c3),
            600: Color(0xff8a87b9),
            700: Color(0xff7975af),
            800: Color(0xff6964a5),
            900: Color(0xff58539b)
          }),
          textTheme: const TextTheme(
            // TextField
            bodyLarge: TextStyle(
              color: Color(0xff404040),
              fontSize: 18,
            ),
            // Dispalay
            displayMedium: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
            displaySmall: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
            // Headline
            headlineLarge: TextStyle(
                color: Color(0xff404040),
                fontSize: 26,
                fontWeight: FontWeight.w600),
            headlineMedium: TextStyle(
                color: Color(0xff404040),
                fontSize: 20,
                fontWeight: FontWeight.w500),
            headlineSmall: TextStyle(
                color: Color(0xff404040),
                fontSize: 14,
                fontWeight: FontWeight.w300),
          ),
          dividerTheme: const DividerThemeData(
              thickness: 1,
              indent: 30,
              endIndent: 30,
              color: Color.fromRGBO(244, 244, 244, 1))),
      routes: {
        '/': (context) => const SplashScreen(
              // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
              child: LoginScreen(),
            ),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/shops': (context) => const StoresScreen(),
      },
    );
  }
}
