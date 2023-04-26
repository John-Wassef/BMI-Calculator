import 'dart:math';

import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

bool isMale = true;
double height = 80;
int weight = 60;
int age = 10;

class _BMIScreenState extends State<BMIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              isMale ? Colors.red.shade800 : Colors.grey[800]),
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/male.png",
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "MALE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onTap: () {
                          isMale = true;
                          setState(() {});
                        },
                      ),
                    )),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              !isMale ? Colors.red.shade800 : Colors.grey[800]),
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/female.png",
                              height: 100,
                              width: 100,
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "FEMALE",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        onTap: () {
                          isMale = false;
                          setState(() {});
                        },
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(color: Colors.white70, fontSize: 15.0),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Slider(
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (value) {
                        height = value;
                        setState(() {});
                      },
                      thumbColor: Colors.red.shade800,
                      inactiveColor: Colors.grey,
                      activeColor: Colors.white,
                    )
                  ],
                ),
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[800]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "WEIGHT",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "$weight",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor: Colors.black54,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor: Colors.black54,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[800]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "AGE",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                              ),
                            ),
                             Text(
                              "$age",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor: Colors.black54,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  backgroundColor: Colors.black54,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MaterialButton(
              height: 60,
              minWidth: double.infinity,
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResults(
                              isMale: isMale,
                              age: age,
                              result: result.round(),
                              weight: weight,
                            )));
              },
              color: Colors.red.shade800,
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
