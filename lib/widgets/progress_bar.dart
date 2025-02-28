import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app_bloc.dart';
import 'package:provider/provider.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == "cooking" ? progressBar(bloc) : const SizedBox();
  }

  Widget progressBar(bloc) {
    return Column(
      children: [
        Text(
          (bloc.time - bloc.seconds).toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 45,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: LinearProgressIndicator(
            value: bloc.percent / 100,
            backgroundColor: Colors.transparent,
            valueColor: const AlwaysStoppedAnimation(
              Color(0xFFF4A460),
            ),
          ),
        )
      ],
    );
  }
}
