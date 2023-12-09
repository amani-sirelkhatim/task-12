import 'package:firstapp/color.dart';
import 'package:firstapp/result.dart';
import 'package:firstapp/result.dart';
import 'package:firstapp/result.dart';
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
  bool isMale = true;
  bool isnormal = true;
  int age = 20;
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
      return 'Your body weight is absolutly normal,good jop!';
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
      backgroundColor: AppColors.black,
      appBar: AppBar(
        title: const Text(
          'IBM Calculater App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                (isMale) ? AppColors.red : AppColors.darkgrey,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male_outlined,
                                  color: Colors.white,
                                  size: 90,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                (!isMale) ? AppColors.red : AppColors.darkgrey,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female_outlined,
                                  color: Colors.white,
                                  size: 90,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: AppColors.darkgrey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '$height',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      thumbColor: AppColors.red,
                      activeColor: AppColors.red,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                      max: 220,
                      min: 120,
                    ),
                  ],
                ),
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
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
                                'Age',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '$age Yrs',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
                                            age--;
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
                                          age++;
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
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: AppColors.red),
                  onPressed: () {
                    double result = weight / (height * height * .0001);
                    setState(() {
                      res = result;
                    });
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResultView(
                              finalres: res,
                            )));
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
