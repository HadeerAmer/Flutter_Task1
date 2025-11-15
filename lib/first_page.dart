import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int counter = 1;

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: Colors.purpleAccent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Who Am I?",
                style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
               ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Image.network("https://cdn-icons-gif.flaticon.com/14255/14255790.gif"),
                  ),
                  Column(
                    children: [
                      Text(
                        "Name: Hadeer Amer",
                        style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                counter++;
                              });
                            },
                          ),
                          Text("Age: $counter years",
                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                          ),
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if(counter>1){
                                  counter--;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Text(
                        "Nationality: Egyptian",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}