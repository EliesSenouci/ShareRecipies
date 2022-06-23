import 'package:flutter/material.dart';
import 'package:share_recipies/di/service_locator.dart';
import 'package:share_recipies/ui/login/login_view.dart';
import 'package:share_recipies/ui/misc/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencyInjection();
  runApp(const ShareRecipiesApp());
}

class ShareRecipiesApp extends StatelessWidget {
  const ShareRecipiesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Share Recipies',
      theme: appTheme,
      home: const LoginView(),
    );
  }
}