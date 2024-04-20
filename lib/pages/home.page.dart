import 'package:app_mobile_test/config/Couleurs.dart';
import 'package:app_mobile_test/models/SettingData.dart';
import 'package:app_mobile_test/pages/smart.page.dart';
import 'package:app_mobile_test/widgets/SettingWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<IconData> navIcons = [
  Icons.home_filled,
  Icons.insert_chart_rounded,
  Icons.settings,
  Icons.person
];

List<SettingData> settings = [
  SettingData(true, true, "Smart Light", "4 Lamps", "assets/images/lamp.png"),
  SettingData(false, false, "Smart AC", "2 Devices", "assets/images/clim.png"),
  SettingData(
      false, false, "Smart TV", "1 Device", "assets/images/smart_tv.png"),
  SettingData(
      false, false, "Smart Light", "2 Devices", "assets/images/speacker.png"),
];

int selectedIndex = 0;

class _HomePageState extends State<HomePage> {
  var value = 0;
  bool positive = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "Hello, Aymard",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 23,
                fontFamily: "NotoSansCarian",
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 217, 227, 231),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.notifications_none_sharp),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Couleurs().noir),
                child: const Padding(
                  padding: EdgeInsets.only(top: 15.0, right: 30.0, left: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "18 °C",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    // fontFamily: "NotoSansCarian",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Cloudy",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Tue, February 07",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                              )
                            ],
                          ),
                          Image(
                            image: AssetImage("assets/images/meteo.png"),
                            height: 80,
                            width: 90,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Indoor temp",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "23 °C",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Humidity",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "40 %",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Air Quality",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Good",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white54,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Couleurs().gris,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Couleurs().noir,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {
                            // Action pour le premier bouton
                          },
                          child: const Text(
                            'Room',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Couleurs().noir, // Couleur du texte
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {
                            // Action pour le deuxième bouton
                          },
                          child: const Text(
                            'Devices',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.1,
                  children: settings.asMap().entries.map((entry) {
                    final data = entry.value;

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SmartPage(title: data.title),
                          ),
                        );
                      },
                      child: SettingWidget(
                        data: data,
                        onChanged: (value) {
                          //Mise à jour de la valeur de isActived pr interagir avec settingWidget et changer de couleur du background
                          setState(() {
                            // Désactiver tous les autres widgets
                            for (var i = 0; i < settings.length; i++) {
                              settings[i].switchValue = false;
                              settings[i].isActived = false;
                            }
                            // Activer le widget sélectionné
                            data.switchValue = value;
                            data.isActived = value;
                          });
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
              Align(alignment: Alignment.bottomCenter, child: navBarWidget()),
            ],
          ),
        ),
      ),
    );
  }

  Widget navBarWidget() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: Couleurs().noir, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navIcons.map((icon) {
            int index = navIcons.indexOf(icon);
            bool isSelected = selectedIndex == index;
            return Material(
                color: Colors.transparent,
                child: Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 60,
                      decoration: BoxDecoration(
                          color: isSelected ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        icon,
                        color: isSelected ? Colors.blue : Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ));
          }).toList(),
        ),
      ),
    );
  }
}
