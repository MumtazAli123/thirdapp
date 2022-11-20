import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DatePickedPage extends StatefulWidget {
  const DatePickedPage({super.key});

  @override
  State<DatePickedPage> createState() => _DatePickedPageState();
}

class _DatePickedPageState extends State<DatePickedPage> {
  var selectedDated = DateTime.now();
  var selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            shadowColor: Colors.grey,
            elevation: 5,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  margin: const EdgeInsets.all(11),
                  width: 150,
                  height: 100,
                  child: Image.asset(
                    "./assets/images/Sir.jpeg",
                    width: 200,
                  ),
                ),
                Container(
                  width: 100,
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: ElevatedButton(
                      onPressed: () async {
                        DateTime? datePicked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2023));
                        if (datePicked != null) {
                          if (kDebugMode) {
                            print(
                                'Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                          }
                        }
                      },
                      child: const Text(
                        "Date",
                        style: TextStyle(fontSize: 25, fontFamily: 'FontMain'),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(
                      onPressed: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.dial,
                        );
                        if (pickedTime != null) {
                          if (kDebugMode) {
                            if (kDebugMode) {
                              print(
                                  'select Time: ${pickedTime.hour}:${pickedTime.minute}');
                            }
                          }
                        }
                      },
                      child: Card(
                        elevation: 3,
                        child: Container(
                          padding: const EdgeInsets.all(6.0),
                          child: const Text(
                            "Select Time",
                            style: TextStyle(
                                fontFamily: 'FontMain',
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
          Card(
            shadowColor: Colors.grey,
            elevation: 5,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(4.0),
                  margin: const EdgeInsets.all(11),
                  width: 150,
                  height: 100,
                  child: Image.asset(
                    "./assets/images/Sir.jpeg",
                    width: 200,
                  ),
                ),
                Container(
                  width: 100,
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: ElevatedButton(
                      onPressed: () async {
                        DateTime? datePicked = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2023));
                        if (datePicked != null) {
                          if (kDebugMode) {
                            print(
                                'Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                          }
                        }
                      },
                      child: const Text(
                        "Date",
                        style: TextStyle(fontSize: 25, fontFamily: 'FontMain'),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(
                      onPressed: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.dial,
                        );
                        if (pickedTime != null) {
                          if (kDebugMode) {
                            if (kDebugMode) {
                              print(
                                  'select Time: ${pickedTime.hour}:${pickedTime.minute}');
                            }
                          }
                        }
                      },
                      child: const Text(
                        "Select Time",
                        style: TextStyle(
                            fontFamily: 'FontMain',
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.w400),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
