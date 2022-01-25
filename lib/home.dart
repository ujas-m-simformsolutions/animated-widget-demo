import 'package:animated_widget_demo/animations/position_animation.dart';
import 'package:animated_widget_demo/animations/size_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SizeStateful()));
              },
              child: Text('Size Animation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => PositionStateful()));
              },
              child: Text('Position Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
