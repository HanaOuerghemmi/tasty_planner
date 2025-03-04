import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core.dart';

class AppProvider extends StatelessWidget {
  final bool isShowOnboarding;
  
  const AppProvider({super.key, required this.isShowOnboarding});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => LanguageCubit()),
        BlocProvider(create: (_) => VersionCubit()),
      ],
      child: MyApp(isShowOnboarding: isShowOnboarding),
    );
  }
}
