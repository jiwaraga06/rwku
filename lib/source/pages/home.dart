import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rwku/source/router/string.dart';
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
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, webViewScreen);
                    },
                    leading: Icon(Icons.recycling),
                    title: Text("Pelaporan Data Sampah"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "About RW-ku",
                  style: GoogleFonts.lato(fontSize: 21, fontWeight: FontWeight.w500, color: Colors.blueGrey),
                ),
                const SizedBox(height: 12),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                  child: TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.1,
                    isFirst: true,
                    indicatorStyle: const IndicatorStyle(
                      color: Color(0XFF7BA7D7),
                    ),
                    beforeLineStyle: const LineStyle(
                      color: Color(0XFF7BA7D7),
                      thickness: 6,
                    ),
                    endChild: ListTile(
                      leading: Image.asset("assets/phone.png", height: 30),
                      title: Text("Aplikasi"),
                      subtitle: Text("RW-ku"),
                    ),
                  ),
                ),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                  child: TimelineDivider(
                    begin: 0.1,
                    end: 0.9,
                    thickness: 6,
                    color: Color(0XFF7BA7D7),
                  ),
                ),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                  child: TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.9,
                    beforeLineStyle: const LineStyle(
                      color: Color(0XFF779FE5),
                      thickness: 6,
                    ),
                    afterLineStyle: const LineStyle(
                      color: Colors.grey,
                      thickness: 6,
                    ),
                    indicatorStyle: const IndicatorStyle(
                      width: 20,
                      color: Color(0XFF779FE5),
                    ),
                    startChild: ListTile(
                      leading: Image.asset("assets/version.png", height: 30),
                      title: Text("Version"),
                      subtitle: Text("1.0"),
                    ),
                  ),
                ),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                  child: const TimelineDivider(
                    begin: 0.1,
                    end: 0.9,
                    thickness: 6,
                    color: Colors.grey,
                  ),
                ),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                  child: TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.1,
                    beforeLineStyle: const LineStyle(
                      color: Colors.grey,
                      thickness: 6,
                    ),
                    indicatorStyle: const IndicatorStyle(
                      width: 20,
                      color: Colors.grey,
                    ),
                    endChild: ListTile(
                      leading: Text("Desc"),
                      title: Text("Memberikan kemudahan layanan kepada warga melalui pendekatan digital."),
                    ),
                  ),
                ),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                  child: const TimelineDivider(
                    begin: 0.1,
                    end: 0.9,
                    thickness: 6,
                    color: Colors.deepPurple,
                  ),
                ),
                Animate(
                  effects: [FadeEffect(duration: const Duration(milliseconds: 700))],
                  child: TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.9,
                    isLast: true,
                    beforeLineStyle: const LineStyle(
                      color: Colors.deepPurple,
                      thickness: 6,
                    ),
                    afterLineStyle: const LineStyle(
                      color: Colors.deepPurple,
                      thickness: 6,
                    ),
                    indicatorStyle: const IndicatorStyle(
                      width: 20,
                      color: Colors.deepPurple,
                    ),
                    startChild: ListTile(
                      leading: Image.asset("assets/dev.png", height: 30),
                      title: Text("Tim Pengembang"),
                      subtitle: Text("Dosen dan Mahasiswa Sekolah Tinggi Teknologi Bandung"),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
