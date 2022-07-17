import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_guide/main.dart';
import 'appcubit_cubit.dart';
import 'categories_trips_screen.dart';
import 'welcome_page.dart';
import 'package:tourist_guide/screens/taps_screen.dart';

class CubitAppLOgics extends StatefulWidget {
  @override
  _CubitAppLOgicsState createState() => _CubitAppLOgicsState();
}

class _CubitAppLOgicsState extends State<CubitAppLOgics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          BlocBuilder<AppcubitCubit, AppcubitState>(builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        }
        if (state is LoadedState) {
          return CategryTripesScreen('bagan', 'Bagan');
          // return TabsScreen();
        }
        // if (state is DetailsState) {
        //   return DetailsPage();
        // }
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
