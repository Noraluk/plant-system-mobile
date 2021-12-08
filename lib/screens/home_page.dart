import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';
import 'package:plant_system_mobile/widget/loading.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PumpBloc>(
      create: (context) => context.read<PumpBloc>()
        ..add(PumpLoadedEvent(
          id: 1,
        )),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PumpBloc, PumpState>(
        builder: (context, state) {
          if (state is PumpLoadedState) {
            return Center(
              child: Switch.adaptive(
                value: state.isActive!,
                onChanged: (isActive) {
                  context.read<PumpBloc>().add(
                        PumpActivatedEvent(
                          id: 1,
                          pumpActivatedRequestModel: PumpActivatedRequestModel(
                            isActive: isActive,
                          ),
                        ),
                      );
                },
              ),
            );
          }

          return const Loading();
        },
      ),
    );
  }
}
