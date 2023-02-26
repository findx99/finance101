import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/TopFund.dart';
import '../screens/fund_add_screen.dart';

Widget FundCard(
    {required String sectionTitle, Icon? icon, required TopFund? data}) {
  return Column(children: [
    Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(15, 20, 8, 0),
          child: Row(
            children: [
              Text(
                sectionTitle,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 4,
              ),
              icon != null ? icon : SizedBox(width: 0)
            ],
          ),
        ),
      ],
    ),
    SizedBox(
      height: 20,
    ),
    Container(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        height: 150,
        child: ListView.builder(
          itemCount: data?.content?.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddFund(searchId: data?.content![index]?.searchId)));
              },
              child: Container(
                width: 300,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 17, 10, 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 25,
                                height: 25,
                                child: CachedNetworkImage(
                                    imageUrl:
                                        "${data?.content![index]?.logoUrl}"))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Flexible(
                                child: Text(
                              "${data?.content![index]?.schemeName}",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )),
                            Column(
                              children: [
                                Text(
                                  "${data?.content![index]?.return3y}",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "3Y Returns",
                                  style: TextStyle(color: Colors.grey.shade600),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "${data?.content![index]?.category} ${data?.content![index]?.subCategory}",
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${data?.content![index]?.growwRating}",
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey.shade300,
                              size: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ))
  ]);
}

// Widget Year(year){
//   return Text("");
// }
