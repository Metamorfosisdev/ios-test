import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const <TableRow>[
        TableRow(children: [
          _SingleCard(
              icon: Icons.check_box, text: 'General', color: Colors.blue),
          _SingleCard(
              icon: Icons.emoji_transportation,
              text: 'Transport',
              color: Colors.purple),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.ac_unit_sharp, text: 'Shopping', color: Colors.pink),
          _SingleCard(
              icon: Icons.card_giftcard_outlined,
              text: 'Card',
              color: Colors.orange),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.access_time_outlined,
              text: 'Timer',
              color: Colors.green),
          _SingleCard(
              icon: Icons.adb_rounded, text: 'Android', color: Colors.teal),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icon, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  text,
                  style: GoogleFonts.montserrat(fontSize: 20, color: color),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
