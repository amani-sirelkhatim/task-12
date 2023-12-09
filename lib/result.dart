import 'package:firstapp/color.dart';
import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  const ResultView({super.key, required this.finalres});
  final double finalres;

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  bool isnormal = true;
  String getClass(val) {
    if (val < 16) {
      isnormal = false;
      return 'Severe Thinness';
    } else if (val >= 16 && val < 17) {
      isnormal = false;
      return 'Moderate Thinness';
    } else if (val >= 17 && val < 18.5) {
      isnormal = false;
      return 'Mild  Thinness';
    } else if (val >= 18.5 && val <= 25) {
      isnormal = true;
      return 'Normal';
    } else if (val >= 25 && val <= 30) {
      isnormal = false;
      return 'Overweight';
    } else if (val >= 30 && val <= 35) {
      isnormal = false;
      return 'Obese Class I';
    } else if (val >= 35 && val <= 40) {
      isnormal = false;
      return 'Obese Class II';
    } else {
      isnormal = false;
      return 'Obese Class III';
    }
  }

  String gettext(val) {
    if (val < 16) {
      return 'You have to gain weight';
    } else if (val >= 16 && val < 17) {
      return 'You have to gain weight';
    } else if (val >= 17 && val < 18.5) {
      return 'You have to gain weight';
    } else if (val >= 18.5 && val <= 25) {
      return 'Your body weight is absolutly normal,\n\ good job';
    } else if (val >= 25 && val <= 30) {
      return 'You have to lose weight';
    } else if (val >= 30 && val <= 35) {
      return 'You have to lose weight';
    } else if (val >= 35 && val <= 40) {
      return 'You have to lose weight';
    } else {
      return 'You have to lose weight';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ))),
      body: Expanded(
        child: Container(
          width: double.infinity,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(color: AppColors.black),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Your Result',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.darkgrey,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              getClass(widget.finalres),
                              //getClass(res),
                              style: TextStyle(
                                  color: (isnormal) ? Colors.green : Colors.red,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.finalres.toStringAsFixed(2),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      gettext(widget.finalres),
                                      textAlign: TextAlign.left,
                                      textWidthBasis:
                                          TextWidthBasis.longestLine,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Recalculate',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.red),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
