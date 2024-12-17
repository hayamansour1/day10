import 'package:day10/services/database.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://jfsonipbtogdphqyhifo.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Impmc29uaXBidG9nZHBocXloaWZvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzQzNTczNjcsImV4cCI6MjA0OTkzMzM2N30.QNNLOJpR_4aRMNfvvgx0CCsMTH4nOQiTGzGsy8RL9og",
  );

  Database().getData();
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
