import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SigleCard(
                icon: Icons.pie_chart_outline_outlined,
                color: Colors.blue,
                text: 'General'),
            _SigleCard(
                icon: Icons.emoji_transportation,
                color: Colors.purple,
                text: 'Transport'),
          ],
        ),
        TableRow(
          children: [
            _SigleCard(icon: Icons.shop, color: Colors.pink, text: 'Shopping'),
            _SigleCard(icon: Icons.cloud, color: Colors.orange, text: 'Bills'),
          ],
        ),
        TableRow(
          children: [
            _SigleCard(
                icon: Icons.movie,
                color: Colors.blueAccent,
                text: 'Entertainment'),
            _SigleCard(
                icon: Icons.car_rental, color: Colors.green, text: 'Grocery'),
          ],
        ),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon, size: 35),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(this.text, style: TextStyle(color: this.color, fontSize: 18)),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
