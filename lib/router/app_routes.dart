import 'package:flutter/material.dart';
import 'package:fl_components/screens/screen.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialroute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_outlined),
    MenuOption(
        route: 'listview1',
        name: 'Listview Tipo 1 Screen',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'Listview Tipo 2 Screen',
        screen: const ListView2Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'alert',
        name: 'Alertas Screen',
        screen: const AlertScreen(),
        icon: Icons.notifications),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
