import 'package:catcake/firebase_options.dart';
import 'package:catcake/giris.dart';
import 'package:catcake/home.dart';
import 'package:cosmos/cosmos.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'catcake',
      home: CosmosFirebase.isSignedIn() == true
          ? const HomePage()
          : const Giris(),
    );
  }
}
