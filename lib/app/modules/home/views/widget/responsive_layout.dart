import 'package:flutter/material.dart';
import '../../../home/views/widget/breakpointsdimensi.dart';


class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {Key? key, this.mobileBody, this.tabletBody, this.desktopBody})
      : super(key: key);

  final Widget? mobileBody;
  final Widget? tabletBody;
  final Widget? desktopBody;
  

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimensi) {
        if (dimensi.maxWidth < kMobileBreakPoint) {
          return mobileBody!;
        } else if (dimensi.maxWidth <= kTabletBreakPoint) {
          return tabletBody ?? desktopBody!;
        } else {
          return desktopBody!;
        }
      },
    );
  }
}