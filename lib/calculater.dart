import 'package:firstapp/color.dart';
import 'package:flutter/material.dart';

class calculater extends StatefulWidget {
  const calculater({super.key});

  @override
  State<calculater> createState() => _calculaterState();
}

class _calculaterState extends State<calculater> {
  int weight = 60;
  int height = 160;
  double res = 0.0;
  String getClass(val) {
    if (val < 16) {
      return 'Severe Thinness';
    } else if (val >= 16 && val < 17) {
      return 'Moderate Thinness';
    } else if (val >= 17 && val < 18.5) {
      return 'Mild  Thinness';
    } else if (val >= 18.5 && val <= 25) {
      return 'Normal';
    } else if (val >= 25 && val <= 30) {
      return 'Overweight';
    } else if (val >= 30 && val <= 35) {
      return 'Obese Class I';
    } else if (val >= 35 && val <= 40) {
      return 'Obese Class II';
    } else {
      return 'Obese Class III';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        title: const Text(
          'IBM Calculater App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.darkgrey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$weight KG',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    backgroundColor: AppColors.grey,
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (weight > 0) {
                                          weight--;
                                        }
                                      });
                                    },
                                  ),
                                  FloatingActionButton(
                                    mini: true,
                                    backgroundColor: AppColors.grey,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ])
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.darkgrey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$height CM',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                    mini: true,
                                    backgroundColor: AppColors.grey,
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (weight > 0) {
                                          height--;
                                        }
                                      });
                                    },
                                  ),
                                  FloatingActionButton(
                                    mini: true,
                                    backgroundColor: AppColors.grey,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        height++;
                                      });
                                    },
                                  ),
                                ])
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.red),
                onPressed: () {
                  double result = weight / (height * height * .0001);
                  setState(() {
                    res = result;
                    res.toStringAsFixed(2);
                  });
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Result : ' + res.toStringAsFixed(2),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    getClass(res),
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
