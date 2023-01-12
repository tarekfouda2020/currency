import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/lang_cubit/lang_cubit.dart';

class GeneralProviders {
  GeneralProviders._();

  static GeneralProviders instance = GeneralProviders._();

  List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<LangCubit>(
          create: (BuildContext context) => LangCubit(),
        ),
      ];
}
