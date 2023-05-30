import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wally/app/core/routes/router.dart';
import 'package:wally/app/theme/theme.dart';

class Paisa extends ConsumerWidget {
  const Paisa({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routeProvider);
    return DynamicColorBuilder(
      builder: (light, dark) {
        return MaterialApp.router(
          title: "Wally",
          theme: generateLightTheme(light),
          darkTheme: generateDarkTheme(dark),
          routerConfig: router,
        );
      }
    );
  }
}
