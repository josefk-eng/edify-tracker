import 'package:flutter/material.dart';
import 'package:edify_progress_tracker/presentation/home_screen/home_screen.dart';
import 'package:edify_progress_tracker/presentation/login_screen/login_screen.dart';
import 'package:edify_progress_tracker/presentation/side_menu_screen/side_menu_screen.dart';
import 'package:edify_progress_tracker/presentation/appointment_screen/appointment_screen.dart';
import 'package:edify_progress_tracker/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String loginScreen = '/login_screen';

  static const String sideMenuScreen = '/side_menu_screen';

  static const String appointmentScreen = '/appointment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: HomeScreen.builder,
        loginScreen: LoginScreen.builder,
        sideMenuScreen: SideMenuScreen.builder,
        appointmentScreen: AppointmentScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
