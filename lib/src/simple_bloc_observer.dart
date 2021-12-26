// Copyright 2021 LTMM. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

/// Custom [BlocObserver] which observes all bloc and cubit instances.
/// NOTE: [Bloc.observer = SimpleBlocObserver();] before the call to [runApp] in [main.dart]

String get _consoleTimeStamp => DateFormat('HH:mm:ss.SSS').format(DateTime.now().toLocal());

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('$_consoleTimeStamp: ⚡ $event on bloc: ${bloc.toString()}');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase cubit, Change change) {
    debugPrint('$_consoleTimeStamp: 🦺$change onCubit: ${cubit.toString()}');
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('$_consoleTimeStamp: ⚙️ $transition on bloc: ${bloc.toString()}');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase cubit, Object error, StackTrace stackTrace) {
    debugPrint('$_consoleTimeStamp: 🏮 $error on cubit:${cubit.toString()}');
    super.onError(cubit, error, stackTrace);
  }
}
