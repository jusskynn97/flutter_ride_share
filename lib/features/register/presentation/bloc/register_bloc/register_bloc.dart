import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_event.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState()) {
    on<RegisterNextStep>((event, emit) {
      if (state.step < state.maxStep) emit(state.copyWith(step: state.step + 1));
    });

    on<RegisterPreviousStep>((event, emit) {
      if (state.step > 0) emit(state.copyWith(step: state.step - 1));
    });

    on<AssignMaxStep>((event, emit) {
      emit(state.copyWith(maxStep: event.value));
    });

    on<RegisterFieldChanged>((event, emit) {
      switch (event.field) {
        case 'name':
          emit(state.copyWith(name: event.value));
          break;
        case 'email':
          emit(state.copyWith(email: event.value));
          break;
        case 'password':
          emit(state.copyWith(password: event.value));
          break;
        case 'phone':
          emit(state.copyWith(phone: event.value));
          break;
      }
    });

    on<RegisterSubmitted>((event, emit) {
      emit(state.copyWith(isSubmitting: true));
      // TODO: Xử lý gọi API thật
      print("Đăng ký với: ${state.name}, ${state.email}, ${state.password}, ${state.phone}");
    });
  }
}
