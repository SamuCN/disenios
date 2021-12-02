import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [
            Color(0xff5EE8C5), 
            Color(0xff30BAD6)
          ]),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [Page1(), Page2()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Background(),
        _MainContent(),
      ],
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.topCenter,
      color: Color(0xff30BAD6),
      child: Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}

class _MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Text('11º', style: textStyle),
            Text('Miércoles', style: textStyle),
            Expanded(child: Container()),
            Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
          ]),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Bienvenido', style: TextStyle(fontSize: 30)),
          ),
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
        ),
        // si usamos un TextButton para darle estilo seria:
        // style: TextButton.styleFrom(
        //  backgroundColor: Color(0xff0098FA)),
        //  shape: StadiumBorder()
      ),
    );
  }
}
