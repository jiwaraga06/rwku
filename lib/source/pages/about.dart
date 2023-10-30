import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 600))],
                  child: Text(
                    "About",
                    style: GoogleFonts.lato(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.indigoAccent),
                  ),
                ),
                const SizedBox(height: 25),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: AnimateList(
                      interval: 400.ms,
                      effects: [FadeEffect(duration: 500.ms)],
                      children: [
                        ListTile(
                          leading: Image.asset("assets/phone.png", height: 30),
                          title: Text("Aplikasi"),
                          subtitle: Text("RW-ku"),
                        ),
                        ListTile(
                          leading: Image.asset("assets/version.png", height: 30),
                          title: Text("Version"),
                          subtitle: Text("1.0"),
                        ),
                        ListTile(
                          leading: Text("Desc"),
                          title: Text("Memberikan kemudahan layanan kepada warga melalui pendekatan digital.\nTim Pengembang: Dosen sab Mahasiswa Sekolah Tinggi Teknologi Bandung"),
                          // subtitle: Text("RW-ku"),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
