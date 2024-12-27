import 'package:flutter/material.dart';
import 'dart:math';


final _random = Random();

/// A loading state indicator widget that shows an ever rotating kaomoji
class KaomojiLoader extends StatefulWidget {
  final double width;
  final double height;
  const KaomojiLoader({super.key, this.width = 120, this.height = 120});

  @override
  State<KaomojiLoader> createState() => _KaomojiLoaderState();
}

class _KaomojiLoaderState extends State<KaomojiLoader>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final emoji = kaomoji[_random.nextInt(kaomoji.length)];
    return Container(
      width: widget.width,
      height: widget.height,
      margin: const EdgeInsets.all(10),
      child: Center(
        child: RotationTransition(
            turns: _animation,
            child: Text(
              emoji,
              style: const TextStyle(color: Colors.lightBlue, fontSize: 18),
            )),
      ),
    );
  }
}

const kaomoji = [
  r'(⌐ ͡■ ͜ʖ ͡■)',
  r'(☞ﾟヮﾟ)☞',
  r'(ﾉ☉ヮ⚆)ﾉ ⌒*:･ﾟ✧',
  r'(=^･ｪ･^=))ﾉ彡☆',
  r'~=[,,_,,]:3',
  r'¯\_(ツ)_/¯',
  r"( ︶︿︶)_╭∩╮",
  r'( ｀皿´)｡ﾐ/',
  r"(*￣(ｴ)￣*)",
  r'=^_^=',
  r'ᕦ( ͡° ͜ʖ ͡°)ᕤ',
  r'(ಡ_ಡ)☞',
  r'( º﹃º )',
  r'(っˆڡˆς)',
  r'(ღ˘⌣˘ღ)',
  r'[¬º-°]¬',
  r'╭(ʘ̆~◞౪◟~ʘ̆)╮',
  r"O=(' - 'Q)",
  r'¯\(°_o)/¯',
  r'ಡ_ಡ',
  r'(V)(°,,,,°)(V)',
  r"o(-`д´- ｡)",
  r"ˁ⁽͑ ˚̀˙̭˚́ ⁾̉ˀ ⁼³",
  r"୧༼ಠ益ಠ༽୨",
];
