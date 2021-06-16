import 'package:flutter/material.dart';
import 'dart:math' as math show sin, pi, sqrt;
import 'package:flutter/animation.dart';

import 'circlepainter.dart';
import 'curvewave.dart';
import 'search.dart';

class Order extends StatefulWidget {
  const Order({
    Key? key,
    required this.size,
    required this.color,
    // required this.onPressed,
    // required this.child,
  }) : super(key: key);
  final double size;
  final Color color;
  // final Widget child;
  // final VoidCallback onPressed;
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _button() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.size),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[
                widget.color,
                // Colors.black
                (Color.lerp(widget.color, Colors.pink, .05))!
              ],
            ),
          ),
          child: ScaleTransition(
              scale: Tween(begin: 0.95, end: 1.0).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: CurveWave(),
                ),
              ),
              child: Icon(
                Icons.check,
                size: 44,
                color: Colors.white,
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            CustomPaint(
              painter: CirclePainter(
                _controller,
                color: widget.color,
              ),
              child: SizedBox(
                width: widget.size * 4.125,
                height: widget.size * 4.125,
                child: _button(),
              ),
            ),
            Text("Order Placed",
                style: TextStyle(
                    color: Colors.brown[400],
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 60, right: 60),
              child: Text(
                "Your order was placed Successfully.For more details check your product page or just Skip",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 190,
              child: RaisedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Shop more",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(
                      Icons.chevron_right_outlined,
                      size: 30,
                    )
                  ],
                ),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
