import 'package:flutter/material.dart';

import 'package:experthub/config.dart';

class CanvasGlobal extends StatelessWidget {
  const CanvasGlobal({
    super.key,
    required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config().kWhite,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 80,
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}