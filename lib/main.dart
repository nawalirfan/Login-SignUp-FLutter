import 'package:assignment_2/app_state.dart';
import 'package:assignment_2/firebase_options.dart';
import 'package:assignment_2/login.dart';
import 'package:assignment_2/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ApplicationState(),
        ),
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 1, 40, 71),
      ),
      themeMode: ThemeMode.system,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
      },
    ),
    );
    
    
    
  }
}
