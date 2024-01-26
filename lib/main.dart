import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: GlassCard()));

class GlassCard extends StatelessWidget {
  const GlassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Color(0xFFADD6EB),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white!, width: 0.5),
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x00ADD6EB),
                  ),
                  child: Stack(
                    children: [
                      Container(),
                      Positioned(
                          right: 2,
                          top: 50,
                          child: Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              gradient: SweepGradient(
                                center: FractionalOffset.center,
                                colors: <Color>[
                                  Color(0xFFE5FF35), // blue
                                  Color(0xFFFFAF00), // green
                                  Color(0xFF968CFF), // yellow
                                  Color(0xFF8A22EC), // red
                                  Color(0xFFE5FF35), // blue again to seamlessly transition to the start
                                ],
                                stops: const <double>[0.0, 0.25, 0.5, 0.75, 1.0],
                              ),
                            ),
                          )),
                      Positioned.fill(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                          child: Container(
                            padding: EdgeInsets.all(30),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/card_images/Brand.png',
                                      width: 30,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/card_images/icon-contactless.png',
                                          width: 16,
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Image.asset(
                                          'assets/card_images/mastercard.png',
                                          width: 30,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
