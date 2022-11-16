import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial()) {
    getStatus();
  }

  Future<void> getStatus() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(const SplashState.initial());
  }
}
