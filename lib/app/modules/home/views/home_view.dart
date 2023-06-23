import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
   Future<List<dynamic>> fetchData() async {
    final response = await http.get(Uri.parse('https://rsgading.sirs.co.id/api/v1/get-menu.php'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['menu'];
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  List imgs = [
    "registrasiklinik.png",
    "registrasitelemedical.png",
    "riwayatmedis.png",
    "daftarantrian.png",
    "profilepasien.png",
    "infomedis.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 80,
              width: Get.width,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      child: Image.asset('assets/photo.png')),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Hi,',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              Text(
                                'Aisyah',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            'No. KTP : 0845846523',
                            style: TextStyle(
                                color: Color(0xff8D92A3), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    child: Image.asset('assets/notif.png'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Antrian Data Saat ini',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        child: Stack(
          children: [
            Image.asset('assets/bgantrian.png'),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 25),
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'No Antrian',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'A15',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Klinik Omega Citra Raya',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Dr. Sartika Bali Ulina',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Poli Klinik Umum',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 3,
                        right: 5,
                        bottom: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/waktu.png'),
                          SizedBox(
                            width: 5,
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '01 Sep 2022, 10:00 WIB',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ],
),

            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Klinik Terdekat',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text('Lihat Semua'))
              ],
            ),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 96,
                              height: 99,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/clinic1.png'),
                                ),
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 45, top: 75),
                              child: Container(
                                width: 45,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    '2,5 km',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(
                            'Klinik Omega Citra Raya',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 96,
                              height: 99,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/clinic2.png'),
                                ),
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 45, top: 75),
                              child: Container(
                                width: 45,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    '3,2 km',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(
                            'Klinik Alpha Citra Raya',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 96,
                              height: 99,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/clinic3.png'),
                                ),
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 45, top: 75),
                              child: Container(
                                width: 45,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    '1,8 km',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, top: 5),
                          child: Text(
                            'Klinik Beta Citra Raya',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FutureBuilder<List<dynamic>>(
                  future: fetchData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemCount: snapshot.data!.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/${imgs[index]}'),
                                      ),
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                  ),
                                  Text(
                                    '${snapshot.data![index]}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jadwal Dokter',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text('Lihat Semua'))
              ],
            ),
            Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('assets/maincard.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Poliklinik Umum',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.035,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Dr. Sartika Bali Ulina ',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.035,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            FractionallySizedBox(
                              widthFactor: 0.5,
                              child: Container(
                                height: 25,
                                width: 155,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        'assets/waktu.png',
                                        width: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '01 Sep 2022, 10:00 WIB',
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.025,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.15,
                          top: 7,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/dokter.png',
                              width: MediaQuery.of(context).size.width * 0.25,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Daftar Klinik',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text('Lihat Semua'))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 318,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 56,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/clinic2.png'),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Klinik Omega Citra Raya',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/email.png'))),
                            ),
                            SizedBox(width: 3,),
                            Text('omega_citra@yahoo.com',style: TextStyle(fontSize: 12,color: Color(0xff8D92A3)),)

                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/location.png'))),
                            ),
                            SizedBox(width: 3,),
                            Text('Jl Arya Jaya Santika RT 02 RW 03 Pasir \nBolang Tigaraksa Kab Tangerang',style: TextStyle(fontSize: 12,color: Color(0xff8D92A3)),)

                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }
}
