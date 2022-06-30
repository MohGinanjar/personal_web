import 'package:flutter/material.dart';
import 'package:personal_web/app/modules/home/views/widget/breakpointsdimensi.dart';


class MaxWidthConatiner extends StatelessWidget {
  const MaxWidthConatiner({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: child,
      ),
    );
  }
}
