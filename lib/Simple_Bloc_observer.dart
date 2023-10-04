import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocobserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    print('----------');
    debugPrint('change = $change');
    print('----------');
  }

  @override
  void onClose(BlocBase bloc) {
    print('----------');

    debugPrint('close = $bloc');
    print('----------');
  }

  @override
  void onCreate(BlocBase bloc) {
    print('----------');

    debugPrint('create = $bloc');
    print('----------');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
