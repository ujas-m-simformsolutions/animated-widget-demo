import 'package:flutter/material.dart';
import 'dart:math' as math;

class SizeAnimationWidget extends AnimatedWidget {
  const SizeAnimationWidget({
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: _progress.value * 4,
      child: Container(
        width: 50.0,
        height: 50.0,
        color: Colors.red,
      ),
    );
  }
}

class SizeStateful extends StatefulWidget {
  @override
  State<SizeStateful> createState() => _SizeStatefulState();
}

class _SizeStatefulState extends State<SizeStateful>
    with TickerProviderStateMixin {
 late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size animation'),
      ),
      body: Center(
        child: SizeAnimationWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
