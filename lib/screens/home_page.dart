import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/widgets/pump/pump_switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PumpBloc>(
      create: (context) =>
          context.read<PumpBloc>()..add(const PumpManualLoadedEvent(1)),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PumpSwitch(),
      ),
    );
  }
}
