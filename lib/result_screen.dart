import 'package:flutter/material.dart';

class BMIResults extends StatelessWidget {
  final int age;
  final int result;
  final bool isMale;
  final int weight;

  const BMIResults({
    super.key,
    required this.age,
    required this.result,
    required this.isMale,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: const Text(
          "BMI RESULTS",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:Container(
        color: Colors.black,
        child: Center(
          child:Card(
            shape: OutlineInputBorder(borderRadius:BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.indigo,width:2)
            ),
              elevation: 15.0,
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              color: Colors.red.shade900,
              child: SizedBox(
                width: 200,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Gender:${isMale ? "Male" : "female"}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Age: $age",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Weight: $weight",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "BMI Value: $result",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )),
        ),
      )

    );
  }
}
