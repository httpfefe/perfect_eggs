import 'package:flutter/cupertino.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';
import 'package:provider/provider.dart';

import '../blocs/app_bloc.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    switch (bloc.state) {
      case "stopped":
        return Button(
          label: "Start",
          selected: true,
          callback: bloc.start,
        );

      case "cooking":
        return Button(
          label: "Stop",
          selected: true,
          callback: bloc.stop,
        );
      case "done":
        return Button(
          label: "All Done",
          selected: true,
          callback: bloc.done,
        );
      default:
        return Button(
          label: "Start",
          selected: true,
          callback: bloc.start,
        );
    }
  }
}
