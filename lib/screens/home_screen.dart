import 'package:flutter/material.dart';
import 'package:flutter_layouts/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackGroundScreen(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          PageTitle(),
          SizedBox(height: 10),
          CardTable(),
          //SizedBox(height: 10),
        ],
      ),
    );
  }
}
