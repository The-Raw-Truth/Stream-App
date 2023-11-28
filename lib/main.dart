import 'package:flutter/material.dart';
import "routes/app_pages.dart";

void main() {
  runApp(const MotoNgApp());
}

class MotoNgApp extends StatelessWidget {
  const MotoNgApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Raw',
      debugShowCheckedModeBanner: false,
      routerConfig: AppPages.router,
    );
  }
}
