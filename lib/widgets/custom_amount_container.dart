import 'package:biil_point/pages/top_up_page.dart';
import 'package:flutter/material.dart';

class CustomBalanceBox extends StatefulWidget {
  final String headingText;
  final bool isTopUp;
  const CustomBalanceBox({
    super.key,
    required this.headingText,
    required this.isTopUp,
  });

  @override
  State<CustomBalanceBox> createState() => _CustomBalanceBoxState();
}

class _CustomBalanceBoxState extends State<CustomBalanceBox> {
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.orange.shade900.withOpacity(0.8)),
          height: widget.isTopUp == true ? 120 : 150,
          width: MediaQuery.of(context).size.width,
          child: CustomPaint(
            painter: CheckerboardPainter(),
          ),
        ),
        Container(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.headingText,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(isvisible ? 'NGN 0.00' : '*****',
                        style: const TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      child: isvisible
                          ? const Icon(
                              Icons.visibility_outlined,
                              color: Colors.white,
                              size: 20,
                            )
                          : const Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                widget.isTopUp == false
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TopUpPage()));
                        },
                        child: Container(
                          width: 170,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.red.shade900.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Fund Wallet',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 12),
                                Icon(
                                  Icons.add_circle,
                                  size: 18,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CheckerboardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.3)
      ..style = PaintingStyle.fill;
    for (double i = 0; i < size.width; i += 20) {
      for (double j = 0; j < size.height; j += 20) {
        if ((i / 20 + j / 20) % 2 == 0) {
          canvas.drawRect(Rect.fromLTWH(i, j, 20, 20), paint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
