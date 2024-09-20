import 'package:flutter/material.dart';
import 'package:testapp/Views/responsive/desktop_page.dart';
import 'package:testapp/Views/responsive/mobile_page.dart';
import 'package:testapp/Views/responsive/tablet_page.dart';
import 'package:testapp/utils/responsive/resonpsive.dart';

class MainPAge extends StatelessWidget {
  const MainPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(isMobile: MobilePage(), isTablet: TabletPAge(), isDesktop: DesktopPAge());
  }
}