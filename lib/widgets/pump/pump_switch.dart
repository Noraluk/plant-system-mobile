import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_system_mobile/blocs/pump/pump_bloc.dart';
import 'package:plant_system_mobile/models/pump/pump_activated_request_model/pump_activated_request_model.dart';
import 'package:plant_system_mobile/widgets/countdown.dart';
import 'package:plant_system_mobile/widgets/page_segment.dart';

class PumpSwitch extends StatefulWidget {
  const PumpSwitch({Key? key, required this.isActive}) : super(key: key);

  final bool isActive;

  @override
  State<PumpSwitch> createState() => _PumpSwitchState();
}

class _PumpSwitchState extends State<PumpSwitch> {
  bool isCountdownFinish = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageSegment(
        segmentIcons: const [
          FontAwesomeIcons.handPaper,
          Icons.timer,
        ],
        pages: [
          Switch.adaptive(
            value: widget.isActive,
            onChanged: (isActive) => _changePumpStatus(
              context,
              isActive: isActive,
            ),
          ),
          Countdown(
            begin: 5,
            onStart: () {
              _changePumpStatus(context, isActive: true);
              setState(() {
                isCountdownFinish = false;
              });
            },
            onEnd: !isCountdownFinish
                ? () {
                    _changePumpStatus(context, isActive: false);
                    setState(() {
                      isCountdownFinish = true;
                    });
                  }
                : null,
          ),
        ],
      ),
    );
  }

  _changePumpStatus(
    BuildContext context, {
    required bool isActive,
  }) {
    context.read<PumpBloc>().add(
          PumpActivatedEvent(
            id: 1,
            pumpActivatedRequestModel: PumpActivatedRequestModel(
              isActive: isActive,
            ),
          ),
        );
  }
}
