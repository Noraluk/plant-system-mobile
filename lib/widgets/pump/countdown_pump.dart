import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';
import 'package:plant_system_mobile/widgets/countdown.dart';
import 'package:plant_system_mobile/widgets/loading.dart';

class CountdownPump extends StatefulWidget {
  const CountdownPump({Key? key}) : super(key: key);

  @override
  State<CountdownPump> createState() => _CountdownPumpState();
}

class _CountdownPumpState extends State<CountdownPump> {
  bool _isCountdownFinish = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PumpBloc, PumpState>(
      listener: (context, state) {
        if (state is CountdownPumpErrorState) {
          context.read<PumpBloc>().add(const PumpCountdownLoadedEvent(1));
        }
      },
      builder: (context, state) {
        if (state is PumpCountdownLoadedState) {
          return Countdown(
            isLoading: _isCountdownFinish,
            begin: state.second ?? 0,
            onStart: (int second) {
              _changeCountdownPumpStatus(
                context,
                isActive: true,
                second: second,
              );
              setState(() {
                _isCountdownFinish = false;
              });
            },
            onEnd: !_isCountdownFinish
                ? () {
                    _changeCountdownPumpStatus(
                      context,
                      isActive: false,
                    );

                    setState(() {
                      _isCountdownFinish = true;
                    });
                  }
                : null,
          );
        }
        return const Loading();
      },
    );
  }

  _changeCountdownPumpStatus(
    BuildContext context, {
    required bool isActive,
    int? second,
  }) {
    context.read<PumpBloc>().add(
          PumpCountdownActivatedEvent(
            1,
            PumpActivatedRequestModel(
              isActive: isActive,
            ),
            second: second,
          ),
        );
  }
}
