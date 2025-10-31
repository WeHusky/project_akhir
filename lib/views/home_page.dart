import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:project_akhir/components/navbar.dart';
import 'package:project_akhir/models/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey[200]!),
                    borderRadius: BorderRadius.circular(30)                  
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Halo, $firstName $lastName!",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        spacing: 15,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[200]!, width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.message, size: 20, color: Colors.black.withOpacity(0.8)))
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey[200]!, width: 1),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.notifications, size: 20, color: Colors.black.withOpacity(0.8)))
                          )
                        ],
                      ),
                      
                    ],
                  )
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.1),
                    //     blurRadius: 5,
                    //     offset: Offset(0, 1),
                    //   ),
                    // ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Saldo Anda",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        "Rp. 10.000.000",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.black.withOpacity(0.1),
                    //     blurRadius: 5,
                    //     offset: Offset(0, 1),
                    //   ),
                    // ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Ink(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color.fromARGB(255, 238, 238, 238), width: 1)
                        ),
                        child: InkWell(
                          onTap: () => Navigator.pushNamed(context, '/booking_saya'),
                          child: Column(
                            children: [
                              Icon(Icons.calendar_month, size: 24),
                              SizedBox(height: 10),
                              Text("Booking Saya")
                            ],
                          ),
                        ),
                      ),          
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/search');
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                    ),
                    child: Text(
                      "Booking Sekarang",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w800,
                      )
                    )
                  ),
                )            
              ],
            ),
            ),
            Navbar()
          ],
        ),
      ),
    );
  }
}