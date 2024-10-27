import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key, required this.searchController, this.onChanged});

  final TextEditingController searchController;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 9,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: TextField(
        style: GoogleFonts.libreCaslonText(
          fontWeight: FontWeightHelper.regular,
          fontSize: 14.0,
          color: const Color(0xFFBBBBBB),
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xFFBBBBBB),
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic_none_rounded,
              color: Color(0xFFBBBBBB),
            ),
          ),
          hintText: 'Search any product',
          hintStyle: GoogleFonts.libreCaslonText(
            fontWeight: FontWeightHelper.regular,
            fontSize: 14.0,
            color: const Color(0xFFBBBBBB),
          ),
        ),
        controller: searchController,
        onChanged: onChanged,
      ),
    );
  }
}
