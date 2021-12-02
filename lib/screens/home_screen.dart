import 'package:flutter/material.dart';
import 'package:disenios/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable()
        ],
      ),
    );
  }
}