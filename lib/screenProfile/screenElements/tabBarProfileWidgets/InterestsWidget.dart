import 'package:flutter/material.dart';
import 'package:lab2_test/screenProfile/screenElements/tabBarProfileWidgets/Titles.dart';
import '../../data/Arrays.dart';
import '../../data/Colors.dart';

class InterestsWidget extends StatelessWidget {
  const InterestsWidget({super.key} );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Titles(title: "Интересы", subtitle: "Мы подбираем истории и предложения по темам, которые вам нравятся"),

          Container(
            margin: EdgeInsets.only(top: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              direction: Axis.horizontal,
              children: interests.map((i) =>
                  Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: almostBlackColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Material(
                        child: InkWell(
                          onTap: (){print("onTapped");},
                          child: Container(
                              color: greyColor,
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7) ,
                              child: Text( i ,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'SFProText',
                                  fontWeight: FontWeight.w500,),
                              )
                          ),
                        ),
                      )
                  )
              ).toList(),
            ),
          )

        ],
      ),
    );
  }
}