import 'package:flutter/material.dart';
import 'package:shop_app/screens/order_success/order_success_screen.dart';
import '../screens/details/components/top_rounded_container.dart';


class ReceiptScreen extends StatefulWidget {
  static String routeName = "/receipt";

  const ReceiptScreen({super.key});

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              "Receipt Page",
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
            Text("Receipt Page"),
            SizedBox(height: 16),
            Text("[Display completed payment details , home button, my orders button (that leads to My Order Page)]                                         "),
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
                Navigator.pushNamed(context, OrderSuccessScreen.routeName);
              },
              child: const Text("DONE"),
            ),
          ),
        ),
      ),
    );
  }
}
