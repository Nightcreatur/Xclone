import 'package:animations/apis/auth_api.dart';
import 'package:animations/common/error.dart';
import 'package:animations/common/loader.dart';
import 'package:animations/features/auth/controller/auth_controller.dart';
import 'package:animations/features/auth/view/signup_view.dart';
import 'package:animations/features/home/view/home_view.dart';
import 'package:animations/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: ref.watch(currentAccountProvider).when(
            data: (user) {
              if (user != null) {
                return const HomeView();
              }
              return const SignUpView();
            },
            error: (error, st) => ErrorPage(error: error.toString()),
            loading: () => const Loading(),
          ),
    );
  }
}
