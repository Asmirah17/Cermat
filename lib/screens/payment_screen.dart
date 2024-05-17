import 'package:flutter/material.dart';
import 'package:shop_app/screens/receipt_screen.dart';
import '../screens/details/components/top_rounded_container.dart';

class PaymentScreen extends StatefulWidget {
  static String routeName = "/payment";

  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              "Payment Page",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Payment Page"),
            SizedBox(height: 16),
            Text("[Display payment method ]                                         "),
          ],
        )
      ),
      bottomNavigationBar: TopRoundedContainer(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ReceiptScreen.routeName);
              },
              child: const Text("SUBMIT"),
            ),
          ),
        ),
      ),
    );
  }
}
