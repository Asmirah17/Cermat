import 'package:flutter/material.dart';

// import '/details/details_screen.dart';

class ListOrdersScreen extends StatelessWidget {

  const ListOrdersScreen({super.key});
  static String routeName = "/orderList";

  @override
  Widget build(BuildContext context) {
    return 
      DefaultTabController(
        length:3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My Orders'),
            bottom: const TabBar(
                tabs:[
                  Tab(
                    child: Text("All"),
                  ),
                  Tab(
                    child: Text("Upcoming"),
                  ),
                  Tab(
                    child: Text("History"),
                  ),
                ]
              )
          ),
          body:  const TabBarView(
            children: [
              Center(child: Text('All orders'),),
              Center(child: Text('Upcoming orders'),),
              Center(child: Text('Past orders'),),
            ]
          )
        )
      );
  }
}
