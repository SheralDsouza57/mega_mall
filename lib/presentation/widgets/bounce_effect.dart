import 'package:flutter/material.dart';

class BounceEffect extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;

  const BounceEffect({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  _BounceEffectState createState() => _BounceEffectState();
}

class _BounceEffectState extends State<BounceEffect> {
  double _scale = 1;
  // List<BoxShadow> _boxShadow = [];

  void _startBounceAnimation() {
    setState(() {
      _scale = 0.95;
      // _boxShadow = [
      //   const BoxShadow(
      //     color: Colors.black26,
      //     offset: Offset(0, 4),
      //     blurRadius: 8.0,
      //   ),
      // ];
    });

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _scale = 1;
        // _boxShadow = [];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _startBounceAnimation();
        widget.onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        transform: Matrix4.identity()..scale(_scale),
        // decoration: BoxDecoration(
        //   boxShadow: _boxShadow,
        // ),
        child: widget.child,
      ),
    );
  }
}
