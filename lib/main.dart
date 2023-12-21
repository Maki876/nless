import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nless/screen/sign_up.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      // ChangeNotifierProvider<FoodItemsProvider>(
      // create: (context) => FoodItemsProvider(),
      // child: MyApp(),
      const MyApp());
  // )
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // or ThemeMode.light / ThemeMode.dark
      home: SignUp_Page(),
    );
  }
}
