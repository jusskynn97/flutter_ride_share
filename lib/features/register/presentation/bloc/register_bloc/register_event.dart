import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object?> get props => [];
}

class RegisterNextStep extends RegisterEvent {}

class RegisterPreviousStep extends RegisterEvent {}

class AssignMaxStep extends RegisterEvent {
  final int value;
  const AssignMaxStep(this.value);

  @override
  List<Object?> get props => [value];
}

class RegisterFieldChanged extends RegisterEvent {
  final String field;
  final String value;
  const RegisterFieldChanged(this.field, this.value);

  @override
  List<Object?> get props => [field, value];
}

class RegisterSubmitted extends RegisterEvent {}
