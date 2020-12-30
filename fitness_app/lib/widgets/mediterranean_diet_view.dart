import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import '../app_theme.dart';
import '../models/curve_painter.dart';

class MediterraneasnDietView extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;
  MediterraneasnDietView({this.animationController, this.animation});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 26,
            bottom: 18,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topRight: Radius.circular(68.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppTheme.gray.withOpacity(0.2),
                  offset: Offset(1.1, 1.1),
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 8, right: 8, top: 4),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 2,
                                    decoration: BoxDecoration(
                                        color: HexColor('#87A0E5')
                                            .withOpacity(0.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.0))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 4,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            'Eaten',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              letterSpacing: -0.1,
                                              color: AppTheme.gray
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              width: 28,
                                              height: 28,
                                              child: Image.asset(
                                                'lib/assets/images/eaten.png',
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4,
                                                bottom: 3,
                                              ),
                                              child: Text(
                                                '${(1127 * animation.value).toInt()}',
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: AppTheme.darkerText,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4,
                                                bottom: 3,
                                              ),
                                              child: Text(
                                                'Kcal',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  letterSpacing: -0.2,
                                                  color: AppTheme.gray
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 2,
                                    decoration: BoxDecoration(
                                        color: HexColor('#F56E98')
                                            .withOpacity(0.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.0))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 4,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            'Burned',
                                            style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              letterSpacing: -0.1,
                                              color: AppTheme.gray
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              width: 28,
                                              height: 28,
                                              child: Image.asset(
                                                'lib/assets/images/burned.png',
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4,
                                                bottom: 3,
                                              ),
                                              child: Text(
                                                '${(102 * animation.value).toInt()}',
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: AppTheme.darkerText,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4,
                                                bottom: 3,
                                              ),
                                              child: Text(
                                                'Kcal',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  letterSpacing: -0.2,
                                                  color: AppTheme.gray
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Center(
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: AppTheme.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(100.0),
                                    ),
                                    border: Border.all(
                                        width: 4,
                                        color: AppTheme.nearlyDarkBlue
                                            .withOpacity(0.2)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${(1503 * animation.value).toInt()}',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 24,
                                          letterSpacing: 0.0,
                                          color: AppTheme.nearlyDarkBlue,
                                        ),
                                      ),
                                      Text(
                                        'Kcal left',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          letterSpacing: 0.0,
                                          color: AppTheme.gray.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomPaint(
                                painter: CurvePainter(
                                  colors: [
                                    AppTheme.nearlyDarkBlue,
                                    HexColor("#8A98E8"),
                                    HexColor("#8A98E8"),
                                  ],
                                  angle: 140 +
                                      (360 - 140) * (1.0 - animation.value),
                                ),
                                child: SizedBox(
                                  width: 108,
                                  height: 108,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
