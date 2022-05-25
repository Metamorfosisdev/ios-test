import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Classify transaction',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              overflow: TextOverflow.fade,
              maxLines: 2,
              text: TextSpan(
                text: 'Classify this transaction into a particular category',
                style: GoogleFonts.montserrat(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
