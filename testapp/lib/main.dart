import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/Controllers/services/theme_controller.dart';
import 'package:testapp/Views/home_view.dart';
import 'package:testapp/Views/responsive/main_page.dart';
import 'package:testapp/Views/splash_view.dart';
Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  // final  themes =Provider.of<ThemeController>(context,listen: false);
    return Consumer<ThemeController>(builder: (context, value, child) => 
       MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: value.theme,
        home:const MainPAge(),
      ),
    );
  }
}
