import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PositioningWidget extends AnimatedWidget {
  PositioningWidget(AnimationController controller)
      : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.black,
      child: Text(
        'Animation',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      alignment: Alignment(-_progress.value, _progress.value),
    );
  }
}

class PositionStateful extends StatefulWidget {
  @override
  _PositionStatefulState createState() => _PositionStatefulState();
}

class _PositionStatefulState extends State<PositionStateful>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Position Animation'),
      ),
      body: Center(child: PositioningWidget(controller)),
    );
  }
}
