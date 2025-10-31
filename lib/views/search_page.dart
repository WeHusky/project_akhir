import 'package:flutter/material.dart';
import 'package:project_akhir/components/navbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
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
                      SizedBox(height: 50),
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
            Navbar()
          ],
        ),
      )
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
      height: 150,
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
          Navigator.pushNamed(context, '/detail_lapangan');
        },
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                child: Container(
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
                        Text(
                          "Lapangan ABCD",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          )
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
                        Row(
                          children: [
                            Text("4,5"),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            Icon(Icons.star_half, color: Colors.amber, size: 16),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.price_change_rounded, color: Colors.black, size:16),
                        SizedBox(width: 5),
                        Expanded(child: Text("Rp600.000", style: TextStyle(fontSize: 12)))
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