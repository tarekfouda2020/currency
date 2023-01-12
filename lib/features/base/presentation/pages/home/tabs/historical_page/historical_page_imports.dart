import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/base/data/models/history_model/history_model.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';
import 'package:flutter_tdd/features/base/domain/use_cases/get_historical.dart';
import 'package:flutter_tdd/features/base/domain/use_cases/get_supported.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/tabs/historical_page/widgets/historical_widgets_imports.dart';
import 'package:tf_custom_widgets/Inputs/GenericTextField.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';
import 'package:intl/intl.dart';

part 'historical_page_controller.dart';

part 'historical_page.dart';