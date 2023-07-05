import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _homepage();
}

class _homepage extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://www.shutterstock.com/image-vector/indikator-bmi-on-white-background-260nw-2100889945.jpg',
                width: 30,
                height: 30,
                scale: 2.5,
              ),
              SizedBox(
                width: 8,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 6),
                // width: wi,
                // height: hi,
                child: Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: bmi_cal(),
    );
  }
}

class bmi_cal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _bmi_cal();
}

class _bmi_cal extends State<bmi_cal> {
  final weight = TextEditingController();
  final feet = TextEditingController();
  final inch = TextEditingController();
  var result = 0.0;
  void calculate() {
    var feettoinches = double.parse(feet.text);
    var realfeettoinches = feettoinches * 12.0;
    print(realfeettoinches);
    var realinches = double.parse(inch.text);
    print(realinches);
    var totalheightininches = realfeettoinches + realinches;
    print(totalheightininches);
    var totalHeight = totalheightininches / 39.7;
    print(totalHeight);
    var realweight = double.parse(weight.text);
    print(realweight);
    result = realweight / (totalHeight * totalHeight);
    print(result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 800,
          maxWidth: 800,
          minWidth: 100,
          minHeight: 200,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Body Mass Index Calculator',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: weight,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.line_weight,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your weight in kilogram',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: feet,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.height,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your height first feet',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: inch,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.height,
                        color: Colors.white,
                      ),
                      hintText: 'Enter your height second inches',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    calculate();
                  },
                  child: Text('Calculate')),
              SizedBox(
                height: 8,
              ),
              Center(child: Text('$result')),
            ]),
      ),
    );
  }
}
