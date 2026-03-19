import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Replika BRImo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00529C)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //fungsi untuk membuat menu cepat
  Widget _buildFastMenu(IconData icon,Color iconColor, String title) {
    return Column(
      children: [
        Container(
        width: 50,
        height: 50,
          decoration: BoxDecoration(
            // ignore: deprecated_member_use
            color: iconColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: iconColor, size: 28),
        ),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(color: Colors.black87, fontSize: 12)),
      ],
    );
  }

  //fungsi untuk menu kotak
  Widget _buildGridItem(
    IconData icon,
    Color iconColor,
    String title, {
    bool hasBadge = false,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: iconColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon, color: iconColor, size: 30),
            ),
            //if menu memiliki badge notifikasi
            if (hasBadge)
              Positioned(
                right: -2,
                top: -2,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, color: Colors.black87),
        ),
      ],
    );
  }

//item navigasi bawah

Widget _buildBottomNavItem(IconData icon, String label, {bool isActive = false}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: isActive ? const Color(0xFF00529C) : Colors.grey, size:24),
      const SizedBox(height: 4),
      Text(
        label,
        style: TextStyle(color: isActive ? const Color(0xFF00529C) : Colors.grey, fontSize: 10, fontWeight: isActive ? FontWeight.bold : FontWeight.normal,),
      ),
      
    ],
  );
}
  @override

  Widget build(BuildContext context) {
    //parent : scaffold
    return Scaffold(
      backgroundColor: Colors.white,
      //child 1 (scaffold) : body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                //layer pertama
                Container(
                  height: 240,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF002244),
                        Color(0xFF00529C),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                    
                  
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //logo dan sapaan
                      Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BRI',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                ),
                              ),
                              Text(
                                ' mo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),

                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Selamat Pagi',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'ica',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //notifikasi dan bantuan
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              const Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                                size: 28,
                              ),
                              Positioned(
                                right: 2,
                                top: 2,
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFF003B73),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.headset_mic_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(width: 6),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      ' pusat',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      'Bantuan',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //layer kedua
                Container(
                  margin: const EdgeInsets.only(top: 140, left: 20, right: 20),
                 padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white, // Alas utama sekarang PUTIH
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      // ignore: deprecated_member_use
                      BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 10, offset: const Offset(0, 5)),
                    ],
                  ),
                  child: Column(
                    
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                    color: const Color(0xFF015A9E),
                    borderRadius: BorderRadius.circular(15),
                      ), 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'saldo rekening utama',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          letterSpacing: 2,
                        ),
                    
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            '........',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              letterSpacing: 2,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.visibility,
                              color: Color(0xFF00529C),
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Divider(color: Colors.white30, thickness: 1),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Semua Rekeningmu',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 18),
                        ],
                          ),
                        ],
                      ),
                  ),
                     
                      //fast menu
                      Padding(padding: const EdgeInsets.only(top: 15),
                      child : Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildFastMenu(Icons.wallet, Colors.blue, 'Transfer'),
                          _buildFastMenu(Icons.receipt_long, Colors.teal, 'BRIVA'),
                          _buildFastMenu(Icons.water_drop, Colors.cyan, 'PDAM'),
                          _buildFastMenu(Icons.phone_android, Colors.green, 'Pulsa/Data'),
                        ],
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
              
            //banner promo
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
             padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF00529C),
                    Color(0xFF00A2E9),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Takut Inflasi? Emas Jadi Solusi',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                      SizedBox(height: 4),
                      Text(
                          'Yuk, buka tabungan emas sekarang!',
                          style: TextStyle(color: Colors.white70, fontSize: 11),
                        ),
],
),
),

//sisi kiri
Container(
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    // ignore: deprecated_member_use
    color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(10),
  ),
  child:const Icon(Icons.monetization_on, color: Colors.amber, size: 30), // Ikon koin emas
),
                ],
              ),
            ),
            const SizedBox(height: 25),
            //kolom pencarian
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Color(0xFF00529C)),
                  const SizedBox(width: 10),
                  Text(
                    'Cari Fitur',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            //grid menu
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 15,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildGridItem(
                  Icons.account_balance_wallet,
                  Colors.green,
                  'Top Up',
                  hasBadge: true,
                ),
                _buildGridItem(Icons.credit_card, Colors.green, 'BRIZZI'),
                _buildGridItem(Icons.receipt_long, Colors.blue, 'Tagihan', hasBadge: true),
                _buildGridItem(
                  Icons.swap_horiz,
                  Colors.blue,
                  'Transfer',
                  hasBadge: true,
                ),
                _buildGridItem(
                  Icons.shopping_bag,
                  Colors.pink,
                  'Lifestyle'
                ),
                _buildGridItem(
                  Icons.atm,
                  Colors.blue,
                  'Setor &\nTarik Tunai',
                ),
                _buildGridItem(
                  Icons.menu_book,
                  Colors.orange,
                  'Catatan\nKeuangan',
                ),
                _buildGridItem(Icons.eco, Colors.orange, 'Investasi'),
              ],
            ),
            const SizedBox(height: 15),

            //tombol lainnya
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Lainnya', style: TextStyle(color: Color(0xFF00529C), fontSize: 13, fontWeight: FontWeight.w600,),),
                const SizedBox(width: 4), const Icon(Icons.keyboard_arrow_down, color: Color(0xFF00529C), size: 18,),
              ],
            ),
          ],
        ),
          
      ),
      

      //tombol qris melayang
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 65, width: 65, margin: const EdgeInsets.only(top: 30), decoration: BoxDecoration(color: const Color(0xFF00529C), borderRadius: BorderRadius.circular(18), 
        boxShadow: [
          // ignore: deprecated_member_use
          BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 10, offset:const Offset(0,5)),

        ],
        ),
      
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.qr_code_scanner, color: Colors.white, size: 28),
          SizedBox(height: 2),
          Text('QRIS', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
      ),
      //child 2 (scaffold) : bottomNavigationBar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        //memberi efek cekungan untuk tombol qris
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,//jarak antara tombol qris &batas cekungan
        elevation: 10, //memberikan bayangan
        child: SizedBox(
          height: 60,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomNavItem(Icons.home, 'Home', isActive: true),
              _buildBottomNavItem(Icons.receipt_long, 'Mutasi'),

              const SizedBox(width: 40), //memberi jarak untuk tombol qris

              _buildBottomNavItem(Icons.mail_outline, 'Aktivitas'),
              _buildBottomNavItem(Icons.person_outline, 'Akun'),
          
            ],
            ),
        ),
      ),
    );
  }
}
