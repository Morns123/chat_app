import 'package:flutter/material.dart';
import 'package:my_chat_app/pages/splash_page.dart';
import 'package:my_chat_app/utils/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: const String.fromEnvironment('https://zlsbdzbpupfybtjftmsf.supabase.co'),
    anonKey: const String.fromEnvironment('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inpsc2JkemJwdXBmeWJ0amZ0bXNmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU1Nzk2ODQsImV4cCI6MjAyMTE1NTY4NH0.JaQMtvSqhFbdm4opfNMsn1ppjo_no71hKwT7ScrSMcg'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Chat App',
      theme: appTheme,
      home: const SplashPage(),
    );
  }
}