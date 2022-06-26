import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/CategoryProvider.dart';
import 'providers/TripProvider.dart';
import 'screens/welcome_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_guide/screens/CubitAppLogics.dart';
import 'package:tourist_guide/screens/appcubit_cubit.dart';
import 'package:tourist_guide/screens/dataService.dart';
import 'package:tourist_guide/screens/categories_trips_screen.dart';
import 'package:tourist_guide/screens/categories_screen.dart';
import 'package:tourist_guide/screens/taps_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => TripProvider()),

      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English, no country code
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: TabsScreen(),
    //   home: BlocProvider<AppcubitCubit>(
    // create: (context) => AppcubitCubit(data: DataServices()),
    // child: CubitAppLOgics(),
    //   )
    );
  }
}
