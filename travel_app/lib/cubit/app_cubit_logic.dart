import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/pages/detail_page.dart';
import 'package:travel_app/pages/navPages/main_page.dart';
import 'package:travel_app/pages/welcome_page.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({ Key? key }) : super(key: key);

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates> (
        builder: (context, state) {
          if (state is WelcomeState) {
            return WelcomePage();
          }if (state is DetailState) {
            return DetailPage();
          }if (state is LoadedState) {
            return MainPage();
          }if (state is LoadingState) {
            return Center(child: CircularProgressIndicator(),);
          } else {
            return Container();
          }
        },
      ) ,
    );
  }
}