import 'package:flutter/material.dart';

class SeeAllButton extends StatefulWidget {
  final VoidCallback? onTap;

  const SeeAllButton({Key? key, this.onTap}) : super(key: key);

  @override
  State<SeeAllButton> createState() => _SeeAllButtonState();
}

class _SeeAllButtonState extends State<SeeAllButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          color: Colors.amber,
          child: const Text(
            "see All",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
