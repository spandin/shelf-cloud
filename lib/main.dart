import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:shelfx/features/app/splash_sreen/splash_screen.dart';
import 'package:shelfx/features/user_auth/presentation/pages/login_page.dart';

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

  await FirebaseAppCheck.instance.activate(
    // Default provider for Android is the Play Integrity provider. You can use the "AndroidProvider" enum to choose
    // your preferred provider. Choose from:
    // 1. Debug provider
    // 2. Safety Net provider
    // 3. Play Integrity provider
    androidProvider: AndroidProvider.debug,
    // Default provider for iOS/macOS is the Device Check provider. You can use the "AppleProvider" enum to choose
    // your preferred provider. Choose from:
    // 1. Debug provider
    // 2. Device Check provider
    // 3. App Attest provider
    // 4. App Attest provider with fallback to Device Check provider (App Attest provider is only available on iOS 14.0+, macOS 14.0+)
    appleProvider: AppleProvider.appAttest,
  );

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Авторизация';
    return MaterialApp(
        title: title,
        debugShowCheckedModeBanner: true,
        theme: ThemeData(useMaterial3: true, fontFamily: 'Jost'),
        home: const SplashScreen(
          child: LoginPage(),
        ));
  }
}
