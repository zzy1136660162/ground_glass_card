import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: GlassCard()));

const TextStyle smallTextStyle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(0, 0, 0, 0.6));


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
                    // border: Border.all(color: Colors.white!, width: 0.5),
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x00ADD6EB),
                    boxShadow:   [
                      // 高亮色
                      BoxShadow(
                        color: Color(0xFFDEF1FF).withOpacity(0.5),
                        offset: Offset(5.0, 5.0),
                        blurRadius: 2.0,
                      ),
                      // 阴影色
                      BoxShadow(
                        color: Color(0xFF79BEE8).withOpacity(.5),
                        offset: Offset(-5.0, -5.0),
                        blurRadius: 2.0,
                      ),
                    ],
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
                            padding: EdgeInsets.all(25),
                            child: Stack(
                              children: [
                                Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        // 调整这个值来改变暗度
                                        BlendMode
                                            .modulate, // 使用混合模式darken
                                      ),
                                      child: Image.asset(
                                        'assets/card_images/Circuit.png',
                                        width: 35,
                                        color: Color.fromRGBO(
                                            0, 0, 0, 0.5),
                                      ),
                                    )),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/card_images/Brand.png',
                                          width: 26,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/card_images/icon-contactless.png',
                                              width: 9,
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
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Credit card number',
                                      style: smallTextStyle,
                                    ),
                                    Text(
                                      '5737 4277 4925 2858',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.w700,
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.6)),
                                    ),
                                    SizedBox(
                                      height: 0,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            flex: 4,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Text(
                                                  'Name',
                                                  style:
                                                  smallTextStyle,
                                                ),
                                                Text(
                                                    'Alexander K. Smithers',
                                                    style: TextStyle(
                                                        fontSize:
                                                        12,
                                                        fontWeight:
                                                        FontWeight
                                                            .w500,
                                                        color: Color
                                                            .fromRGBO(
                                                            0,
                                                            0,
                                                            0,
                                                            0.6)))
                                              ],
                                            )),
                                        Expanded(
                                            flex: 3,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Text(
                                                  'Exp. Date',
                                                  style:
                                                  smallTextStyle,
                                                ),
                                                Text('05/25',
                                                    style: TextStyle(
                                                        fontSize:
                                                        16,
                                                        fontWeight:
                                                        FontWeight
                                                            .w700,
                                                        color: Color
                                                            .fromRGBO(
                                                            0,
                                                            0,
                                                            0,
                                                            0.6))),
                                              ],
                                            )),
                                      ],
                                    )
                                  ],
                                ),
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
