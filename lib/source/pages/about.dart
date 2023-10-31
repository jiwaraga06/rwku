import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 45,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 19,)),
      ),
      body: ListView(
        children: [
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
                    style: GoogleFonts.lato(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.blueAccent),
                  ),
                ),
                const SizedBox(height: 25),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: AnimateList(
                      interval: 400.ms,
                      effects: [FadeEffect(duration: 500.ms)],
                      children: [
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
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
