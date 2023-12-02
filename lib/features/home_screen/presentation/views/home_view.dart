import 'package:flutter/material.dart';
import 'package:kid_teaching/features/home_screen/presentation/views/widgets/home_view_body.dart';
import 'widgets/home_floating_action_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
      floatingActionButton: HomeFloatingActionButton(),
    );
  }
}
