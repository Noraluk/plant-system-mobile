import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/widgets/page_segment.dart';
import 'package:plant_system_mobile/widgets/pump/countdown_pump.dart';
import 'package:plant_system_mobile/widgets/pump/manual_pump.dart';

class PumpSwitch extends StatefulWidget {
  const PumpSwitch({Key? key}) : super(key: key);

  @override
  State<PumpSwitch> createState() => _PumpSwitchState();
}

class _PumpSwitchState extends State<PumpSwitch> {
  @override
  Widget build(BuildContext context) {
    return PageSegment(
      segmentIcons: const [
        FontAwesomeIcons.handPaper,
        Icons.timer,
      ],
      pages: const [
        ManualPump(),
        CountdownPump(),
      ],
      actions: <Function>[
        _loadManualPump,
        _loadCountdownPump,
      ],
    );
  }

  _loadManualPump() =>
      context.read<PumpBloc>().add(const PumpManualLoadedEvent(1));
  _loadCountdownPump() =>
      context.read<PumpBloc>().add(const PumpCountdownLoadedEvent(1));
}
