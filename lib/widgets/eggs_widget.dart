import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../blocs/app_bloc.dart';

class Eggs extends StatelessWidget {
  const Eggs({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    switch (bloc.state) {
      case "stopped":
        return stopped();
      case "cooking":
        return cooking();
      case "done":
        return done();
    }
    return Container();
  }

  Widget stopped() {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 300,
      child: const FlareActor(
        "assets/animations/eggs.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: "start",
      ),
    );
  }

  Widget cooking() {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 300,
      child: const FlareActor(
        "assets/animations/cooking.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: "start",
      ),
    );
  }

  Widget done() {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 300,
      child: const FlareActor(
        "assets/animations/egg-cooking.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        isPaused: false,
        animation: "start",
      ),
    );
  }
}
