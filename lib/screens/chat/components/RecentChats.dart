import 'package:flutter/material.dart';

class RecentChats extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            offset: Offset(0, 2),
          )
        ]
      ),
      child: Column(children: [
        for (int i=0; i<10; i++)
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: InkWell(
            onTap: (){},
            child: Container(
              height: 65,
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(
                    "assets/images/womanAI.png", 
                    height: 65, 
                    width: 65,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vendors",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF113953),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Hello, how was the service...",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "12:30",
                      style: TextStyle(fontSize:15, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 23,
                      width: 23,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFF113953),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ),
                  ],
                )
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}