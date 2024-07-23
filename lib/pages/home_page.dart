import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/actions_buttons.dart';
import 'package:perfect_eggs/widgets/eggs_widget.dart';
import 'package:perfect_eggs/widgets/progress_bar.dart';

import 'package:perfect_eggs/widgets/type_buttons_widget.dart';
import 'package:provider/provider.dart';

import '../blocs/app_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
      body: Container(
          child: ListView(
        children: const [
          SizedBox(
            height: 50,
          ),
          Text(
            "Perfect Eggs",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Eggs(),
          Padding(
            padding: EdgeInsets.all(50),
            child: TypeButtons(),
          ),
          ProgressBar(),
          Padding(
            padding: EdgeInsets.all(20),
            child: ActionButtons(),
          )
        ],
      )),
    );
  }
}
