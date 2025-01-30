import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_2/Theming/light_theme.dart';
import 'package:islami_2/providers/My_Provider.dart';
import 'package:islami_2/screens/home/home_screen.dart';
import 'package:islami_2/screens/home/sura_details.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    startLocale: Locale('ar'),
    saveLocale: true,
    supportedLocales: [Locale('en'), Locale('ar')],
    path: 'assets/translations',
    fallbackLocale: Locale('en'),
    child: ChangeNotifierProvider(
        create:(context) =>  MyProvider()..getTheme(),
        child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: Theming.lightTheme,
      darkTheme: Theming.drarkTheme,
      themeMode: pro.MyTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
    );
  }
}
