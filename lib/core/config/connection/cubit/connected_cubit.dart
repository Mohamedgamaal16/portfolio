import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'connected_state.dart';

class ConnectedCubit extends Cubit<ConnectedState> {
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  ConnectedCubit() : super(ConnectedInitialState()) {
    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      final result = results.isNotEmpty ? results.first : ConnectivityResult.none;
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        emit(ConnectedSuccessState());
      } else {
        emit(ConnectedFailureState());
      }
    });
  }

  @override
  Future<void> close() {
    _connectivitySubscription?.cancel();
    return super.close();
  }
}
