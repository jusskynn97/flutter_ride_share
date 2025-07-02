import 'package:equatable/equatable.dart';

class RegisterState extends Equatable {
  final int step;
  final int maxStep;
  final String? name, email, password, phone;
  final bool isSubmitting;

  const RegisterState({
    this.step = 0,
    this.maxStep = 0,
    this.name,
    this.email,
    this.password,
    this.phone,
    this.isSubmitting = false,
  });

  RegisterState copyWith({
    int? step,
    int? maxStep,
    String? name,
    String? email,
    String? password,
    String? phone,
    bool? isSubmitting,
  }) {
    return RegisterState(
      step: step ?? this.step,
      maxStep: maxStep ?? this.maxStep,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      phone: phone ?? this.phone,
      isSubmitting: isSubmitting ?? this.isSubmitting,
    );
  }

  @override
  List<Object?> get props => [step, maxStep, name, email, password, phone, isSubmitting];
}