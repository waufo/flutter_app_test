import 'package:app_mobile_test/config/Couleurs.dart';
import 'package:app_mobile_test/models/SettingData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  final SettingData data;
  final ValueChanged<bool> onChanged;

  const SettingWidget({required this.data, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: data.isActived ? Couleurs().noir : Couleurs().gris,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage(data.image),
                      height: 30,
                      width: 30,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          activeColor: Colors.white,
                          thumbColor:
                              data.switchValue ? Colors.blue : Couleurs().noir,
                          value: data.switchValue,
                          onChanged: onChanged,
                          trackColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: data.isActived ? Colors.white : Couleurs().noir,
                      ),
                    ),
                    Text(
                      data.subTitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: data.isActived ? Colors.white54 : Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
