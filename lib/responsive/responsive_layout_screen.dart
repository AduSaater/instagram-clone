import 'package:flutter/material.dart';
import '../utils/dimension.dart';
class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  ResponsiveLayout({required this.webScreenLayout, required this.mobileScreenLayout});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > webScreenSize){
            //Display Web Screen
            return webScreenLayout;
          }
          // Display Mobile Screen
          return mobileScreenLayout;
    },
    );
  }
}
