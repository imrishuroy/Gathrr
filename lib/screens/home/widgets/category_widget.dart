import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String label;
  final Color color;
  final String bgImage;

  const CategoryWidget({
    Key? key,
    required this.label,
    required this.color,
    required this.bgImage,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _canvas = MediaQuery.of(context).size;
    return SizedBox(
      height: _canvas.height * 0.13,
      width: _canvas.width * 0.26,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              bgImage,
              fit: BoxFit.cover,
            ),
            Container(
              color: color.withOpacity(0.5),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
