import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/widgets/loading.dart';
import 'package:plant_system_mobile/widgets/pump/pump_switch.dart';

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
      body: SafeArea(
        child: BlocConsumer<PumpBloc, PumpState>(
          builder: (context, state) {
            if (state is PumpLoadingState) {
              return const Loading();
            } else if (state is PumpLoadedState) {
              return PumpSwitch(isActive: state.isActive!);
            }
            return Container();
          },
          listener: (context, state) {
            if (state is PumpErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('pump invalid'),
              ));
              context.read<PumpBloc>().add(PumpLoadedEvent(id: 1));
            }
          },
        ),
      ),
    );
  }
}
