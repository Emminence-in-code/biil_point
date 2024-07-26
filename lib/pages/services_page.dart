import 'package:biil_point/widgets/bottom_sheet.dart';
import 'package:biil_point/widgets/custom_pop_button.dart';
import 'package:biil_point/widgets/service_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({
    super.key,
  });

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    bool isselected = false;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CustomPopButton(),
                    SizedBox(width: 100),
                    Text(
                      'Cable TV',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Service Provider',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DisplayBox(),
                    DisplayBox(),
                    DisplayBox(),
                    DisplayBox(),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: controller,
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(11),
                  ],
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Enter Your Phone Number',
                    hintStyle: const TextStyle(fontSize: 14),
                    suffixIconColor: Colors.orange.shade900,
                    suffixIcon: const Icon(Icons.phone_enabled),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Service Plans',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(
                  height: 0,
                  // todo overflow from here
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isselected = !isselected;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: isselected == true
                                ? Colors.orange.shade900
                                : Colors.white),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Select Provider',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: isselected == true
                              ? Colors.orange.shade900
                              : Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
