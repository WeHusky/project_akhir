import 'package:flutter/material.dart';

class LapanganDetail extends StatefulWidget {
  const LapanganDetail({super.key});

  @override
  State<LapanganDetail> createState() => _LapanganDetailState();
}

class _LapanganDetailState extends State<LapanganDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Detail', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),), 
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/contohlapangan.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lapangan ABC",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ) ,
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.sports_soccer, color: Colors.black, size: 16),
                              SizedBox(width: 5),
                              Text('Mini Soccer'),
                            ],
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 10, 
                            width: 1, 
                            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 16),
                              Icon(Icons.star, color: Colors.amber, size: 16),
                              Icon(Icons.star, color: Colors.amber, size: 16),
                              Icon(Icons.star, color: Colors.amber, size: 16),
                              Icon(Icons.star_half, color: Colors.amber, size: 16),
                              SizedBox(width: 5),
                              Text("4,5"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                            children: [
                              Icon(Icons.location_city, color: Colors.black, size: 16),
                              SizedBox(width: 5),
                              Text("Jakarta Pusat"),
                            ],
                      ),
                      SizedBox(height: 5),
                      Row(
                            children: [
                              Icon(Icons.alarm, color: Colors.black, size: 16),
                              SizedBox(width: 5),
                              Text("Setiap Hari, 08.00 - 23.00 WIB"),
                            ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.05),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Mulai dari",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Rp600.000",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromARGB(255, 238, 238, 238),
                width: 1
              )
            )
          ),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              onPressed: (){
                Navigator.pushNamed(context, '/booking');
              },
              child: Text(
                "Book Sekarang",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}