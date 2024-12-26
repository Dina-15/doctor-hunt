import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalBlocObserver extends BlocObserver {
  @override

  ////! This method is invoked when a Bloc or Cubit is created. It allows for initial setup or logging.
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    _logDebug('🟢 Bloc/Cubit Created', bloc.runtimeType);
  }

  @override
  ////! This method is triggered whenever there is a state change in any Bloc or Cubit.
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logDebug('🔄 State Changed', bloc.runtimeType,
        from: change.currentState, to: change.nextState);
  }

  @override
  ////! This method handles state transitions for Bloc instances. It provides detailed information on transitions, including the current state, the event, and the next state.
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _logDebug('🔀 Transition', bloc.runtimeType,
        from: transition.currentState,
        to: transition.nextState,
        event: transition.event);
  }

  @override
  ////! This method is triggered when an error occurs in a Bloc or Cubit. It logs the error and the associated stack trace.
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    _logDebug('❌ Error', bloc.runtimeType,
        error: error, stackTrace: stackTrace);
  }

  @override
  ////! This method is called just before a Bloc or Cubit is closed. It's useful for cleanup or logging purposes.
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _logDebug('🛑 Bloc/Cubit Closed', bloc.runtimeType);
  }

  @override
  ////! This method is called when an event is added to the event stream.
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _logDebug('📥 Event Added', bloc.runtimeType, event: event);
  }

  void _logDebug(String message, Type blocType,
      {Object? from,
      Object? to,
      Object? error,
      StackTrace? stackTrace,
      Object? event}) {
    if (kDebugMode) {
      final logMessage =
          StringBuffer() //! Used to construct log messages dynamically, improving performance and readability when constructing complex log messages.
            ..write(message)
            ..write(': $blocType');
      if (from != null) logMessage.write(', from: $from');
      if (to != null) logMessage.write(', to: $to');
      if (error != null) logMessage.write(', error: $error');
      if (event != null) logMessage.write(', event: $event');
      log(logMessage.toString(), error: error, stackTrace: stackTrace);
    }
  }
}
