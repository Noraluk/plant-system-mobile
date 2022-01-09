import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';
import 'package:plant_system_mobile/widgets/loading.dart';

class ManualPump extends StatelessWidget {
  const ManualPump({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PumpBloc, PumpState>(
      builder: (context, state) {
        if (state is PumpManualLoadedState) {
          return Switch.adaptive(
            value: state.isActive!,
            onChanged: (isActive) =>
                context.read<PumpBloc>().add(PumpManualActivatedEvent(
                      1,
                      PumpActivatedRequestModel(isActive: isActive),
                    )),
          );
        }

        return const Loading();
      },
    );
  }
}
