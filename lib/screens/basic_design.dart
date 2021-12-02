import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: AssetImage('assets/landscape.jpg')
          ),
          _Titulo(),

          _ButtonSection(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('Tempor eiusmod qui commodo est occaecat commodo occaecat minim aliqua. Magna incididunt nisi minim voluptate irure cillum quis ut. Irure non laborum officia magna reprehenderit amet aute veniam. Nostrud consectetur non deserunt aliquip qui quis eu non id ut exercitation dolor ullamco reprehenderit. Aliquip veniam do aute aute consequat laborum velit mollit mollit ex occaecat velit. Exercitation ullamco sunt fugiat irure amet voluptate nulla exercitation sunt. Velit officia esse incididunt incididunt excepteur nostrud ipsum est.',textAlign: TextAlign.justify)
          )
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  const _Titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomButton(icon: Icons.call, text: 'CALL'),
          _CustomButton(icon: Icons.router, text: 'ROUTE'),
          _CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const _CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30),/*IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.blue)),*/
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}


