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
  State<BounceEffect> createState() => _BounceEffectState();
}

class _BounceEffectState extends State<BounceEffect> {
  double _scale = 1;

  void _startBounceAnimation() {
    setState(() {
      _scale = 0.95;
    });

    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _scale = 1;
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
        child: widget.child,
      ),
    );
  }
}
