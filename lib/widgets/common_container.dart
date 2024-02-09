import 'package:flutter/material.dart';
import 'package:todoapp/utils/utils.dart';

class CommomContainer extends StatelessWidget {
  const CommomContainer({super.key, this.child, this.height});
  final Widget? child;
  final double? height;
  @override
  Widget build(BuildContext context) {
    final deviceSize = context.devicesSize;
    return Container(
                        width: deviceSize.width,
                        height: deviceSize.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: context.colorScheme.primaryContainer,
                        ),
                        child: child,
                        );
  }
}