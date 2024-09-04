import 'package:flutter/material.dart';
import '../Utils/my_button.dart';
import '../Utils/my_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyContainer(
              myheight: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        color: Colors.white,
                        size: 70,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        color: Colors.grey,
                        size: 70,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            MyContainer(
                myheight: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    LinearProgressIndicator(
                      minHeight: 15,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    Text(
                      '218 cm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
            Row(
              children: [
                Expanded(
                  child: MyContainer(
                      myheight: 100,
                      child: MyButton(
                        text: 'Age',
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: MyContainer(
                      myheight: 100,
                      child: MyButton(
                        text: 'Weight',
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButton: IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blueAccent.shade700),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.calculate,
            color: Colors.white,
            size: 40,
          )),
    );
  }
}
