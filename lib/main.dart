import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shelfx/src/features/stores/screens/stores_screen.dart';
import 'firebase_options.dart';

import 'package:shelfx/src/utils/theme/theme.dart';
import 'package:shelfx/src/features/welcom_screen/screens/welcom_screen.dart';
import 'package:shelfx/src/features/authentication/screens/login_screen.dart';
import 'package:shelfx/src/features/authentication/screens/register_screen.dart';

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
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        '/': (context) => const WelcomScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/stores': (context) => const StoresScreen(),
      },
    );
  }
}
