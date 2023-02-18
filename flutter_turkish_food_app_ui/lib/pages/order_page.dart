import 'package:flutter/material.dart';

import '../product/util/custom_color.dart';
import '../product/util/custom_padding_radius.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColor().backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: ProjectPaddding().left,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                GradietButtonColor().upColor,
                                GradietButtonColor().downColor,
                              ],
                            ),
                            borderRadius: CustomBorderRadius().buttonCircular,
                          ),
                          child: RepaintBoundary(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_left,
                                size: 30,
                                color: ProjectColor().textHeadColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    Expanded(
                      child: Padding(
                        padding: ProjectPaddding().left,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                GradietButtonColor().upColor,
                                GradietButtonColor().downColor,
                              ],
                            ),
                            borderRadius: CustomBorderRadius().buttonCircular,
                          ),
                          child: RepaintBoundary(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_left,
                                size: 30,
                                color: ProjectColor().textHeadColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*

 */
