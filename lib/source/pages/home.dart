import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rwku/source/router/string.dart';
import 'package:rwku/source/widget/customContainer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const SizedBox(height: 12),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("assets/logo.jpg", height: 35),
                const SizedBox(width: 12),
                Column(
                  children: [Text("Hallo, Selamat Datang", style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blueAccent))],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: AnimateList(
                      interval: 400.ms,
                      effects: [FadeEffect(duration: 500.ms)],
                      children: [
                        Text("Selayang Pandang", style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.indigoAccent)),
                        const SizedBox(height: 3),
                        Text("RW-ku", style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.indigoAccent)),
                      ],
                    )),
                const SizedBox(height: 12),
                Divider(color: Colors.grey.withOpacity(0.4), thickness: 1.5).animate().scale(duration: 1200.ms, alignment: Alignment.centerLeft),
                const SizedBox(height: 12),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 600))],
                  child: Text(
                    "RW-ku merupakan aplikasi layanan warga di tingkat Rukun Warga (RW) yang mulai dikembangkan akhir tahun 2019 oleh tim dosen dan mahasiswa dari Sekolah Tinggi Teknologi Bandung. Aplikasi ini berfokus pada bagaimana memberikan kemudahan layanan kepada warga dengan berbasis digital.",
                    style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
                const SizedBox(height: 30),
                Divider(color: Colors.grey.withOpacity(0.4), thickness: 1.5),
                const SizedBox(height: 12),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                  child: Text("Main Feature", style: GoogleFonts.lato(fontSize: 18),),
                ),
                const SizedBox(height: 25),
                Animate(
                    effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      children: [
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.pushNamed(context, webViewScreen);
                        //   },
                        //   child: Container(
                        //     child: Column(
                        //       children: [
                        //         Icon(Icons.recycling, color: Colors.deepPurpleAccent, size: 30),
                        //         const SizedBox(height: 8),
                        //         Text(
                        //           "Pengolahan Sampah",
                        //           textAlign: TextAlign.center,
                        //           style: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w600),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, admScreen);
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/GoodNotes.png", height: 30),
                                const SizedBox(height: 8),
                                Text(
                                  "Administrasi",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, posyanduScreen);
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/Home.png", height: 30),
                                const SizedBox(height: 8),
                                Text(
                                  "Posyandu",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, sekolahScreen);
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("assets/School.png", height: 30),
                                const SizedBox(height: 8),
                                Text(
                                  "Sekolah Kehidupan",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, aboutScreen);
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Icon(Icons.info_outline, size: 35),
                                const SizedBox(height: 8),
                                Text(
                                  "About",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lato(fontSize: 13, fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(height: 12),
              ],
            ),
          )
        ],
      ),
    );
  }
}
