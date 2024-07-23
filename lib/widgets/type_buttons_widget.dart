import 'package:flutter/widgets.dart';
import 'package:perfect_eggs/blocs/app_bloc.dart';
import 'package:perfect_eggs/widgets/button_widget.dart';
import 'package:provider/provider.dart';

class TypeButtons extends StatelessWidget {
  const TypeButtons({super.key});
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == "stopped" ? buttons(bloc) : const SizedBox();
  }

  Widget buttons(bloc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Button(
          label: "Soft",
          selected: bloc.selected == "soft",
          callback: () {
            bloc.select("soft");
          },
        ),
        Button(
          label: "Medium",
          selected: bloc.selected == "medium",
          callback: () {
            bloc.select("medium");
          },
        ),
        Button(
          label: "Hard",
          selected: bloc.selected == "hard",
          callback: () {
            bloc.select("hard");
          },
        ),
      ],
    );
  }
}
