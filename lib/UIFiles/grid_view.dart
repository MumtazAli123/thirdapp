import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DatePickedPage extends StatefulWidget {
  const DatePickedPage({super.key});

  @override
  State<DatePickedPage> createState() => _DatePickedPageState();
}

class _DatePickedPageState extends State<DatePickedPage> {
  var selectedDated = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Show Date"),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime(2023));
                },
                child: Text("Date")),
          ],
        ),
      ),
    );
  }
}
