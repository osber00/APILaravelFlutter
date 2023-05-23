import 'package:flutter/material.dart';

class MiCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onPressed;

  const MiCardWidget(
    {
      Key? key,
      required this.imageUrl,
      required this.title,
      required this.onPressed
    }
  ): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.network(
                imageUrl,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text('Ver más información'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
