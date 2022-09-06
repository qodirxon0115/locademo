import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:locademo/pages/home_page.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en", "US"),Locale("uz", "UZ"),Locale("ru", "RU"),Locale("fr", "FR"),Locale("ja", "JA"),Locale("kr", "KR"),
      ],
      path: "assets/traslations",
      child:const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
