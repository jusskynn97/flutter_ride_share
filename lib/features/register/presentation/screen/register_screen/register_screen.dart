import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_event.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_state.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_step1.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_step2.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_step3.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_step4.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        final bloc = context.read<RegisterBloc>();
        final steps = [
          RegisterStep1(bloc: bloc), 
          RegisterStep2(bloc: bloc), 
          RegisterStep3(bloc: bloc),
          RegisterStep4(bloc: bloc)
        ];
        bloc.add(AssignMaxStep(steps.length - 1));
        return WillPopScope(
          onWillPop: () async {
            // if (state.step == 0) return true;
            // bloc.add(RegisterPreviousStep());
            return true;
          },
          child: Scaffold(
            body: Column(
              children: [
                Text(state.maxStep.toString()),
                Expanded(child: steps[state.step]),
              ],
            ),
          ),
        );
      },
    );
  }
}
