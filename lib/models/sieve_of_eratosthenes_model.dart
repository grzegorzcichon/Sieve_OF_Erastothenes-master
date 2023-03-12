import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sieveoferatosthenes/resources/colors/colors.dart';
import 'package:sieveoferatosthenes/widgets/appbars/appbars.dart';
import 'package:sieveoferatosthenes/widgets/buttons/buttons.dart';
import 'package:sieveoferatosthenes/widgets/text_styles.dart';

import '../main.dart';
import '../resources/strings/strings.dart';

class SieveOfEratosthenes extends StatefulWidget {
  @override
  _SieveOfEratosthenesState createState() => _SieveOfEratosthenesState();
}

class _SieveOfEratosthenesState extends State<SieveOfEratosthenes> {
  // Adding a limit to the checked area number to 1000
  int _limit = 1000;
  int count = 0;
  // Creating an empty list , which is then supplemented with more priimr numbers
  List<int> _primeNumbers = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 162, 182, 76),
        appBar: CustomAppbar(),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    BaseButton(
                      color: Theme.of(context)
                          .colorScheme
                          .getprimenumberButtonColor,
                      textView: Text(Str.buttons.generateprimenumbers,
                          style: ButtonTextStyle.overline(
                            context: context,
                            color: Theme.of(context).colorScheme.FontsColor,
                          )),
                      onPressed: () {
                        setState(() {
                          _generatePrimes();
                        });
                      },
                    ),
                    BaseButton(
                      color: Theme.of(context)
                          .colorScheme
                          .getprimenumberButtonColor,
                      textView: Text(Str.buttons.clearlist,
                          style: ButtonTextStyle.overline(
                            context: context,
                            color: Theme.of(context).colorScheme.FontsColor,
                          )),
                      onPressed: () {
                        setState(() {
                          _clearScreen();
                        });
                      },
                    ),
                  ],
                ),
              ),

              // ** Lis View

              // Expanded(
              //child: ListView .builder(
              //itemCount: _primeNumbers.length,
              //itemBuilder: (context, index) {
              //return ListTile(
              // title: Text(
              // _primeNumbers[index].toString(),
              //  textAlign: TextAlign.center,
              // ),
              // );
              // },
              // ),

              // ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 5),
                  child: GridView.count(
                    crossAxisCount: 6,
                    children: _primeNumbers.map((prime) {
                      return Container(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          '$prime',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // function resposible for geberating the prime numbers and add it to List of primenumbers
  void _generatePrimes() {
    _limit = 1000000;

    List<bool> isPrime = List.filled(_limit + 1, true);

    // Exclusion of the number 0 and 1 from the list of prime numbers
    // according to the mathematics rules
    isPrime[0] = false;
    isPrime[1] = false;

    // loop to throught all the possible prime numbers from 2 to the sqiuare of the limit
    for (int o = 2; o * o <= _limit; o++) {
      if (isPrime[o] == true) {
        // used to mark all the multiples of the current prime number "o" as false in the IsPrime list.
        // according to matematic rules - if a number is divisible by a prime number, then it is not a
        // prime number inself
        for (int i = o * o; i <= _limit; i += o) {
          isPrime[i] = false;
        }
      }
    }

    // defines a variable _primesNumbers as apty list.
    _primeNumbers = [];

    // loop iterates over numbers from 2 to the limitt set by  _limnit ( in this case is 1000)
    for (int o = 2; o <= _limit; o++) {
      // checked if the value at index 'o' in the 'is Prime' list is a 'true'
      // if the condition is met, the value of  'o' is added to the _primes list
      // using the add method
      if (isPrime[o]) {
        count++;
        _primeNumbers.add(o);
        if (count == 1000) break;
      }
    }
  }

  // function resposible for cleaning the screen
  void _clearScreen() {
    setState(() {
      _primeNumbers.clear();
    });
  }
}
