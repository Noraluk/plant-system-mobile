import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PumpBloc, PumpState>(
      buildWhen: (previous, current) =>
          previous.pumpID != current.pumpID ||
          previous.isActive != current.isActive,
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Switch.adaptive(
              value: state.isActive,
              onChanged: (isActive) {
                context
                    .read<PumpBloc>()
                    .add(PumpWorked(pumpID: 1, isActive: isActive));
              },
            ),
          ),
        );
      },
    );
  }
}
