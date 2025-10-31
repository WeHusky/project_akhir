import 'package:flutter/material.dart';
import 'package:project_akhir/components/navbar.dart';

class BookingSayaPage extends StatefulWidget {
  const BookingSayaPage({super.key});

  @override
  State<BookingSayaPage> createState() => _BookingSayaPageState();
}

class _BookingSayaPageState extends State<BookingSayaPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Color.fromARGB(255, 0, 0, 0),
            tabs: [
              Tab(icon: Icon(Icons.access_time), text: 'Riwayat'), 
              Tab(icon: Icon(Icons.history), text: 'Aktif'),
            ]
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              TabBarView(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(
                        scrollbars: false, // ⛔ sembunyikan scrollbar
                        overscroll: false, // opsional: hilangkan efek glow
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 252, 252, 252),
                                hintText: 'Cari lapangan...',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 238, 238, 238), 
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 238, 238, 238), 
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            ItemLapangan(),
                            SizedBox(height: 120),
                          ],
                        ),
                      ),
                    )
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(
                        scrollbars: false, // ⛔ sembunyikan scrollbar
                        overscroll: false, // opsional: hilangkan efek glow
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 252, 252, 252),
                                hintText: 'Cari lapangan...',
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 238, 238, 238), 
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 238, 238, 238), 
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            ItemLapangan(),
                            SizedBox(height: 120),
                          ],
                        ),
                      ),
                    )
                    
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}

class ItemLapangan extends StatelessWidget {
  const ItemLapangan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Color.fromARGB(255, 238, 238, 238), 
          width: 1,
        ),
        color: Colors.white,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap:() {
          Navigator.pushNamed(context, '/detail_book');
        },
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset('assets/images/contohlapangan.jpg', fit: BoxFit.cover)
                ),
              )
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "Lapangan ABCD",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                )
                              ),
                            ),
                            Text("30/10/2025", textAlign: TextAlign.right, style: TextStyle(fontSize: 10))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.sports_soccer, color: Colors.black, size: 16),
                            SizedBox(width: 5),
                            Text("Mini Soccer"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_city, color: Colors.black, size: 16),
                            SizedBox(width: 5),
                            Text("Jakarta Pusat"),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.access_time, color: Colors.black, size:16),
                                SizedBox(width: 5),
                                Text("Status: ", style: TextStyle(fontSize: 10)),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 101, 255, 106).withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Aktif", 
                                style: TextStyle(
                                  fontSize: 10, 
                                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_month, color: Colors.black, size:16),
                                SizedBox(width: 5),
                                Text("Tanggal Main:", style: TextStyle(fontSize: 10)),
                              ],
                            ),
                            Expanded(child: Text("30/10/2025 08:00-10:00", textAlign: TextAlign.right, style: TextStyle(fontSize: 10))),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}