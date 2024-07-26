import 'package:biil_point/widgets/app_butttons.dart';
import 'package:biil_point/widgets/app_small_text.dart';
import 'package:biil_point/widgets/custom_pop_button.dart';
import 'package:biil_point/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  CustomPopButton(),
                  SizedBox(
                    width: 100,
                  ),
                  Text('Virtual Account',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 56, 75, 239)),
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Fund Tips',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'Enter amount and transfer into any of the accounts below',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const AppSmallText(text: 'Amount', alignCenter: false),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: amountController,
                autocorrect: false,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(6),
                ],
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter Amount',
                  suffixIconColor: Colors.orange.shade900,
                  hintStyle: const TextStyle(fontSize: 14),
                  suffixIcon: const Icon(Icons.attach_money_rounded),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const AppSmallText(text: 'Virtual Account', alignCenter: false),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange.shade900.withOpacity(0.8)),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: CustomPaint(
                      painter: CheckerboardPainter(),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Virtual Account',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 160,
                                ),
                                Text('Opay',
                                    style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red.withOpacity(0.5)),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    '8143511228',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Clipboard.setData(const ClipboardData(
                                          text: '8143511228'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text('Copied to clipboard')),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.copy_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Ejikeme Bright Chuwkwuebuka',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange.shade900.withOpacity(0.8)),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: CustomPaint(
                      painter: CheckerboardPainter(),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Virtual Account',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 160,
                                ),
                                Text('Opay',
                                    style: TextStyle(
                                        fontSize: 21,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red.withOpacity(0.5)),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    '9036614663',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Clipboard.setData(const ClipboardData(
                                          text: '9036614663'));
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text('Copied to clipboard')),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.copy_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Ejikeme Grace Chiamaka',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              AppButton(
                  onTap: () {},
                  text: 'Go to Bank',
                  backgroundColor: Colors.orange.shade900,
                  textColor: Colors.white)
            ]),
          ]),
        ),
      ),
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
