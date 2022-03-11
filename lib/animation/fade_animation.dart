import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { translateY, opacity }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 500))
      ..add(AniProps.translateY, Tween(begin: -30.0, end: 0.0),
          Duration(milliseconds: 500), Curves.easeOut);

    // final tween1 = MultiTrackTween([
    //   Track("opacity")
    //       .add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
    //   Track("translateY").add(
    //       Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
    //       curve: Curves.easeOut)
    // ]);

    return PlayAnimation<MultiTweenValues<AniProps>>(
        delay: Duration(milliseconds: (500 * delay).round()),
        duration: _tween.duration,
        tween: _tween,
        child: child,
        builder: (context, child, value) {
          return Opacity(
            opacity: value.get(AniProps.opacity),
            // opacity: value.ge
            child: Transform.translate(
                offset: Offset(0, value.get(AniProps.translateY)),
                child: child),
          );
        });
  }
}
