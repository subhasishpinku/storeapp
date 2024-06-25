import 'package:flutter/material.dart';


class ColdRoomCalculator extends StatefulWidget {
  const ColdRoomCalculator({super.key});

  @override
  _ColdRoomCalculatorState createState() => _ColdRoomCalculatorState();
}

class _ColdRoomCalculatorState extends State<ColdRoomCalculator> {
  String ventilationLossFactor = 'Normal';
  int currentIndex = 0; // Track the current index of the bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(
          'Cold Room Calculator',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue[900], // Set Scaffold background color
      body: Container(
        color: Colors.blue[900],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/luve_logo.webp', height: 50),
                Text('Cold Room Calculator',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
            SizedBox(height: 20),
            Text('Project ref.',
                style: TextStyle(fontSize: 16, color: Colors.white)),
            TextField(
              decoration: InputDecoration(
                hintText: 'Coldroom 1',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Room temperature',
                style: TextStyle(fontSize: 16, color: Colors.white)),
            TextField(
              decoration: InputDecoration(
                hintText: '1,00 °C',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Outside temperature',
                style: TextStyle(fontSize: 16, color: Colors.white)),
            TextField(
              decoration: InputDecoration(
                hintText: '25,00 °C',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Ventilation loss factor',
                style: TextStyle(fontSize: 16, color: Colors.white)),
            DropdownButton<String>(
              value: ventilationLossFactor,
              dropdownColor: Colors.blue,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    ventilationLossFactor = newValue;
                  });
                }
              },
              items: <String>['Normal', 'High', 'Low']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text('Running time installation',
                style: TextStyle(fontSize: 16, color: Colors.white)),
            TextField(
              decoration: InputDecoration(
                hintText: '20 hrs.',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Loading perc. room',
                style: TextStyle(fontSize: 16, color: Colors.white)),
            TextField(
              decoration: InputDecoration(
                hintText: '80 %',
                hintStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'General',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.straighten),
            label: 'Dimensions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            label: 'Heat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculate',
          ),
        ],
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.black,
         // Set BottomNavigationBar background color
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
            // Handle navigation or other logic based on the index
            switch (index) {
              case 0:
                // Navigate to General screen or update state for General content
                break;
              case 1:
                // Navigate to Dimensions screen or update state for Dimensions content
                break;
              case 2:
                // Navigate to Heat screen or update state for Heat content
                break;
              case 3:
                // Navigate to Product screen or update state for Product content
                break;
              case 4:
                // Navigate to Calculate screen or update state for Calculate content
                break;
            }
          });
        },
      ),
    );
  }
}
