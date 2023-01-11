import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/bloc/lang_cubit/lang_cubit.dart';
import 'core/helpers/di.dart';
import 'my_app.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton(SharedPreferences.getInstance());
  await configureDependencies();
  runApp(
    BlocProvider(
      create: (BuildContext context) => LangCubit(),
      child:  const MyApp(),
    ),
  );
}

