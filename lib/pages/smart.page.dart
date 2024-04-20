import 'package:app_mobile_test/config/Couleurs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SmartPage extends StatefulWidget {
  final String title;
  const SmartPage({super.key, required this.title});

  @override
  State<SmartPage> createState() => _SmartPageState();
}

int selectedButtonIndex = 0; // Index du bouton sélectionné

List<String> buttonTitles = [
  '8 watt',
  '9 watt',
  '12.5 watt',
  '17 watt',
  '22 watt',
];

class _SmartPageState extends State<SmartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_sharp))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Couleurs().gris,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: buttonTitles.asMap().entries.map((entry) {
                      final index = entry.key;
                      final title = entry.value;
                      return Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: selectedButtonIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedButtonIndex == index
                                  ? Colors.black
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                selectedButtonIndex = index;
                              });
                            },
                            child: Text(
                              title,
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const Center(
                  child: Text(
                    "Controller",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 130.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Min",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Couleurs().noir),
                          ),
                        ],
                      ),
                    ),
                    CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 15.0,
                      percent: 0.8,
                      center: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          children: [
                            Text(
                              "80%",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Couleurs().noir,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "light intensity",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Couleurs().noir,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      backgroundColor: Couleurs().gris,
                      progressColor: Colors.blue,
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Couleurs().noir),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            "Max",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
                childAspectRatio: 0.8,
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  MeteoWidget(true, "assets/images/auto.png", "Auto"),
                  MeteoWidget(false, "assets/images/snow.png", "Cool"),
                  MeteoWidget(false, "assets/images/sunny.png", "Day"),
                  MeteoWidget(false, "assets/images/moon.png", "Night")
                ]),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: 80,
              decoration: BoxDecoration(
                  color: Couleurs().gris,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Power consumption",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Couleurs().noir),
                            ),
                            const Text(
                              "8 watt Smart Light",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Couleurs().noir),
                              child: const Icon(
                                Icons.electric_bolt,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("5 kWh",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700)),
                                Text("Today",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54)),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Couleurs().noir),
                              child: const Icon(
                                Icons.electrical_services,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "120 kWh",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "This month",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black54),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Couleurs().noir,
                borderRadius: BorderRadius.circular(15)),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              onPressed: () {},
              child: const Text(
                "Add new device",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )),
      ),
    );
  }

  Widget MeteoWidget(bool isFirst, String image, String name) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: isFirst ? Couleurs().noir : Couleurs().gris,
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              image: AssetImage(image),
              height: 50,
              width: 50,
            ),
          ),
        ),
        Center(
          child: Text(
            name,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
