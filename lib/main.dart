import 'package:flutter/material.dart';
import 'package:note_app/ui/screens/login/login_screen.dart';
import 'package:note_app/ui/screens/register/register_screen.dart';
import 'package:note_app/ui/screens/test_app/test_app.dart';
import 'package:note_app/ui/theme/color_schemes.dart';
import 'package:note_app/ui/theme/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          textTheme: textTheme),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),

      initialRoute: '/test_app',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/test_app': (context) => const TestAppScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
