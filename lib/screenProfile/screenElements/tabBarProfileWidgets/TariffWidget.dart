import 'package:flutter/material.dart';
import 'Titles.dart';
import 'data/Arrays.dart';
import 'data/Colors.dart';

class Tariff {
  String title;
  String subtitle;
  String patch;
  Tariff(this.title, this.subtitle, this.patch);
}

class TariffWidget extends StatelessWidget {
  const TariffWidget({super.key} );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Titles(title: "Тарифы и лимиты", subtitle: "Для операций в Сбербанк Онлайн"),

            const SizedBox(height: 12),

            ListView.builder(shrinkWrap: true,
                itemCount: tariff.length,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        child: InkWell(
                          onTap: () { print("Tapped");},
                          child: Row(
                            children: [
                              Image(
                                  image: AssetImage(tariff[index].patch),
                                  width: 36, height: 36),
                              const SizedBox(width: 12,),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(tariff[index].title,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'SFProText',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(tariff[index].subtitle,
                                    style: const TextStyle(
                                      color: almostBlackColor,
                                      fontSize: 14,
                                      fontFamily: 'SFProText',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Image(
                                  image: AssetImage("assets/disclosure.png"),
                                  width: 24, height: 24),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ),
                      if (index != tariff.length-1) const Divider(indent: 50)
                    ],
                  );
                })
          ],
        )
    );
  }
}