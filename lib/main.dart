import 'package:airbnb_clone/providers/auth_provider.dart';
import 'package:airbnb_clone/ui/screens/auth/auth_screen.dart';
import 'package:airbnb_clone/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: ColorConstants.tr,
    systemNavigationBarColor: ColorConstants.whiteColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Airbnb UI',
        theme: ThemeData(fontFamily: 'AirbnbCereal'),
        home: AuthScreen(),
      ),
    );
  }
}
