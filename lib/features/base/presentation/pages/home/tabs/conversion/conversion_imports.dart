import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/constants/my_colors.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/features/base/domain/entites/historical_entity.dart';
import 'package:flutter_tdd/features/base/domain/use_cases/get_conversion.dart';
import 'package:flutter_tdd/features/base/domain/use_cases/get_supported.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/tabs/conversion/widgets/conversion_widget_imports.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

part 'conversion.dart';
part 'conversion_controller.dart';