import 'package:flutter/cupertino.dart';
import 'package:social_media_dashboard/app.dart';
import 'package:social_media_dashboard/theme/bloc/app_theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => AppThemeBloc(),
    child: const MyApp(),
  ));
}
