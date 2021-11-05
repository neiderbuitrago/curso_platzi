import 'package:flutter/material.dart';

class FloatingActionButton1 extends StatefulWidget {
  const FloatingActionButton1({
    Key? key,
    required this.icon,
    this.mini,
    this.backgroundColor,
    Null Function()? this.onPressed,
  }) : super(key: key);
  final Icon icon;
  final bool? mini;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  @override
  _FloatingActionButton1State createState() => _FloatingActionButton1State();
}

class _FloatingActionButton1State extends State<FloatingActionButton1> {
  get onpresed => widget.onPressed;
  get backgroundColor => widget.backgroundColor;

  void onPressedFav() {
    // ignore: avoid_print
    print('onPressed');
  }

  @override
  Widget build(BuildContext context) {
    // todo: implement build
    return FloatingActionButton(
      backgroundColor: backgroundColor ?? Colors.white60,
      mini: widget.mini ?? false,
      onPressed: onpresed ?? onPressedFav,
      tooltip: 'Increment',
      child: widget.icon,
    );
  }
}
