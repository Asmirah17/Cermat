import 'package:flutter/material.dart';
import 'package:shop_app/screens/payment_screen.dart';

import '../details/components/top_rounded_container.dart';

class OrderScreen extends StatefulWidget {
  static String routeName = "/order";

  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedTime = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Order Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Order Page"),
            SizedBox(height: 16),
            Text("[Display total amount to be paid, date, time and location]"),
            MaterialButton(
              onPressed: () {
                _displayBottomSheet(context); // Call the function here
              },
              height: 50,
              minWidth: 200,
              color: Color(0xff1D1E22),
              child: Text(
                'OPEN',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _displayBottomSheet(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (context) => Container(
        height: 300,
         child: Column(
          children: [
            SizedBox(height: 16),
            _buildDateSelection(),
            SizedBox(height: 16),
            _buildTimeSelection(),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, PaymentScreen.routeName);
              },
              child: const Text("SUBMIT"),
            ),
            // Add other widgets as needed
          ],
        ),
      ),
    );
  }

  Widget _buildDateSelection() {
    return ListTile(
      title: Text("Date: ${_selectedDate.year}-${_selectedDate.month}-${_selectedDate.day}"),
      trailing: Icon(Icons.calendar_today),
      onTap: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: _selectedDate,
          firstDate: DateTime(2024),
          lastDate: DateTime(2030),
        );
        if (picked != null && picked != _selectedDate) {
          setState(() {
            _selectedDate = picked;
          });
        }
      },
    );
  }

  Widget _buildTimeSelection() {
    String formattedHour = (_selectedTime.hourOfPeriod == 0) ? '12' : '${_selectedTime.hourOfPeriod}';
    String formattedMinute = (_selectedTime.minute < 10) ? '0${_selectedTime.minute}' : '${_selectedTime.minute}';
    String periodIndicator = (_selectedTime.period == DayPeriod.am) ? 'AM' : 'PM';

    return ListTile(
      title: Text("Time: $formattedHour:$formattedMinute $periodIndicator"),
      trailing: Icon(Icons.access_time),
      onTap: () async {
        final TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: _selectedTime,
        );
        if (picked != null && picked != _selectedTime) {
          setState(() {
            _selectedTime = picked;
          });
        }
      },
    );
  }

  }

  

