import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/base/data/models/support_data_model/support_data_model.dart';
import 'package:flutter_tdd/features/base/data/models/target_data_model/target_data_model.dart';
import 'package:flutter_tdd/features/base/domain/use_cases/get_supported.dart';
import 'package:flutter_tdd/features/base/domain/use_cases/get_target_data.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

import 'widgets/home_main_widgets_imports.dart';

part 'home_main.dart';

part 'home_main_controller.dart';