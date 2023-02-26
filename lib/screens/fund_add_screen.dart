import 'package:cached_network_image/cached_network_image.dart';
import 'package:finance101/models/fundModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../service/fetchService.dart';

class AddFund extends StatefulWidget {
  final String? searchId;

  AddFund({required this.searchId});

  @override
  _AddFundState createState() => _AddFundState(searchId: searchId);
}

class _AddFundState extends State<AddFund> {
  final String? searchId;

  FundModel? fundData;
  bool isLoaded = false;

  void loadData() async {
    fundData = await fetchData().fetchFund(searchId);

    // print("fund data: ${fundData?.fundManager}");
    if (fundData != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  _AddFundState({required this.searchId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        // leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 20, 10, 0),
              child: Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: CachedNetworkImage(imageUrl: "${fundData?.logoUrl}"))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${fundData?.schemeName}",
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${fundData?.returnStats![0].risk} ~ ${fundData?.category} ~ ${fundData?.subCategory}",
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${fundData?.stats![0].stat3y}%",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      "3Y Returns",
                      style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                  )
                ],
                // btn to change year
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(
                      majorGridLines: const MajorGridLines(width: 0)),
                  primaryYAxis: CategoryAxis(
                      majorGridLines: const MajorGridLines(width: 0)),
                  series: <LineSeries<chartData, int>>[
                    LineSeries<chartData, int>(
                      dataSource: [
                        chartData(1645986600000, 129.0441),
                        chartData(1646159400000, 129.6382),
                        chartData(1646245800000, 130.9634),
                        chartData(1646332200000, 129.1184),
                        chartData(1646591400000, 126.2976),
                        chartData(1646677800000, 128.3778),
                        chartData(1646764200000, 131.5992),
                        chartData(1646850600000, 132.7519),
                        chartData(1646937000000, 133.8346),
                        chartData(1647196200000, 133.5699),
                        chartData(1647282600000, 132.4037),
                        chartData(1647369000000, 134.2032),
                        chartData(1647455400000, 135.7953),
                        chartData(1647801000000, 135.8285),
                        chartData(1647887400000, 136.2462),
                        chartData(1647973800000, 136.2089),
                        chartData(1648060200000, 136.9616),
                        chartData(1648146600000, 136.0598),
                        chartData(1648405800000, 134.9249),
                        chartData(1648492200000, 135.5776),
                        chartData(1648578600000, 136.6055),
                        chartData(1648665000000, 137.2799),
                        chartData(1648751400000, 141.3374),
                        chartData(1649010600000, 144.5725),
                        chartData(1649097000000, 145.5046),
                        chartData(1649183400000, 146.6443),
                        chartData(1649269800000, 145.6597),
                        chartData(1649356200000, 147.743),
                        chartData(1649615400000, 149.768),
                        chartData(1649701800000, 147.6989),
                        chartData(1649788200000, 148.5273),
                        chartData(1650220200000, 147.7309),
                        chartData(1650306600000, 145.2118),
                        chartData(1650393000000, 144.7842),
                        chartData(1650479400000, 146.574),
                        chartData(1650565800000, 145.6071),
                        chartData(1650825000000, 141.9378),
                        chartData(1650911400000, 144.2144),
                        chartData(1650997800000, 143.7401),
                        chartData(1651084200000, 141.837),
                        chartData(1651170600000, 139.3381),
                        chartData(1651429800000, 138.2359),
                        chartData(1651602600000, 133.9344),
                        chartData(1651689000000, 134.54),
                        chartData(1651775400000, 132.1562),
                        chartData(1652034600000, 129.5383),
                        chartData(1652121000000, 126.0897),
                        chartData(1652207400000, 122.7192),
                        chartData(1652293800000, 120.4683),
                        chartData(1652380200000, 121.3669),
                        chartData(1652639400000, 122.5153),
                        chartData(1652725800000, 127.6137),
                        chartData(1652812200000, 128.1056),
                        chartData(1652898600000, 126.0023),
                        chartData(1652985000000, 129.6876),
                        chartData(1653244200000, 127.6083),
                        chartData(1653330600000, 125.7027),
                        chartData(1653417000000, 122.5197),
                        chartData(1653503400000, 123.9773),
                        chartData(1653589800000, 125.1124),
                        chartData(1653849000000, 127.0546),
                        chartData(1653935400000, 127.4267),
                        chartData(1654021800000, 127.915),
                        chartData(1654108200000, 129.2295),
                        chartData(1654194600000, 127.9217),
                        chartData(1654453800000, 127.6585),
                        chartData(1654540200000, 127.4698),
                        chartData(1654626600000, 127.4413),
                        chartData(1654713000000, 127.9513),
                        chartData(1654799400000, 126.7636),
                        chartData(1655058600000, 122.0921),
                        chartData(1655145000000, 122.3392),
                        chartData(1655231400000, 122.2147),
                        chartData(1655317800000, 117.9197),
                        chartData(1655404200000, 116.7758),
                        chartData(1655663400000, 112.3467),
                        chartData(1655749800000, 117.3638),
                        chartData(1655836200000, 114.7926),
                        chartData(1655922600000, 115.8729),
                        chartData(1656009000000, 118.269),
                        chartData(1656268200000, 119.9461),
                        chartData(1656354600000, 121.046),
                        chartData(1656441000000, 121.4018),
                        chartData(1656527400000, 120.3728),
                        chartData(1656613800000, 120.2592),
                        chartData(1656873000000, 121.2205),
                        chartData(1656959400000, 121.03),
                        chartData(1657045800000, 121.7174),
                        chartData(1657132200000, 123.4347),
                        chartData(1657218600000, 124.3348),
                        chartData(1657477800000, 125.519),
                        chartData(1657564200000, 125.3026),
                        chartData(1657650600000, 125.0621),
                        chartData(1657737000000, 124.3393),
                        chartData(1657823400000, 124.7775),
                        chartData(1658082600000, 126.6022),
                        chartData(1658169000000, 127.2168),
                        chartData(1658255400000, 127.6445),
                        chartData(1658341800000, 128.6578),
                        chartData(1658428200000, 129.4618),
                        chartData(1658687400000, 128.8814),
                        chartData(1658773800000, 128.2446),
                        chartData(1658860200000, 128.6806),
                        chartData(1658946600000, 128.9568),
                        chartData(1659033000000, 130.845),
                        chartData(1659292200000, 132.3557),
                        chartData(1659378600000, 133.8429),
                        chartData(1659465000000, 133.1123),
                        chartData(1659551400000, 132.3805),
                        chartData(1659637800000, 132.7894),
                        chartData(1659897000000, 134.547),
                        chartData(1660069800000, 133.6259),
                        chartData(1660156200000, 134.3423),
                        chartData(1660242600000, 134.541),
                        chartData(1660588200000, 135.3876),
                        chartData(1660674600000, 135.9422),
                        chartData(1660761000000, 136.3428),
                        chartData(1660847400000, 135.2789),
                        chartData(1661106600000, 133.5765),
                        chartData(1661193000000, 135.0062),
                        chartData(1661279400000, 136.4975),
                        chartData(1661365800000, 136.1212),
                        chartData(1661452200000, 137.0145),
                        chartData(1661711400000, 136.5301),
                        chartData(1661797800000, 138.4687),
                        chartData(1661970600000, 138.646),
                        chartData(1662057000000, 139.5016),
                        chartData(1662316200000, 141.4896),
                        chartData(1662402600000, 141.9939),
                        chartData(1662489000000, 143.1321),
                        chartData(1662575400000, 143.7472),
                        chartData(1662661800000, 143.4948),
                        chartData(1662921000000, 143.9763),
                        chartData(1663007400000, 144.4765),
                        chartData(1663093800000, 145.6814),
                        chartData(1663180200000, 146.3333),
                        chartData(1663266600000, 142.9725),
                        chartData(1663525800000, 143.8177),
                        chartData(1663612200000, 145.6713),
                        chartData(1663698600000, 144.751),
                        chartData(1663785000000, 145.339),
                        chartData(1663871400000, 143.1415),
                        chartData(1664130600000, 136.9119),
                        chartData(1664217000000, 137.5569),
                        chartData(1664303400000, 136.327),
                        chartData(1664389800000, 137.9462),
                        chartData(1664476200000, 140.3273),
                        chartData(1664735400000, 138.0223),
                        chartData(1664821800000, 140.4592),
                        chartData(1664994600000, 143.31),
                        chartData(1665081000000, 143.4932),
                        chartData(1665340200000, 142.8966),
                        chartData(1665426600000, 139.9653),
                        chartData(1665513000000, 140.7453),
                        chartData(1665599400000, 139.7154),
                        chartData(1665685800000, 139.7304),
                        chartData(1665945000000, 140.9235),
                        chartData(1666031400000, 141.959),
                        chartData(1666117800000, 142.151),
                        chartData(1666204200000, 143.3382),
                        chartData(1666290600000, 142.1911),
                        chartData(1666636200000, 142.8477),
                        chartData(1666809000000, 144.1511),
                        chartData(1666895400000, 143.101),
                        chartData(1667154600000, 144.1261),
                        chartData(1667241000000, 144.2333),
                        chartData(1667327400000, 144.4483),
                        chartData(1667413800000, 144.3132),
                        chartData(1667500200000, 145.9032),
                        chartData(1667759400000, 146.9453),
                        chartData(1667932200000, 147.3331),
                        chartData(1668018600000, 145.2509),
                        chartData(1668105000000, 145.9915),
                        chartData(1668364200000, 146.1975),
                        chartData(1668450600000, 146.9203),
                        chartData(1668537000000, 146.1697),
                        chartData(1668623400000, 145.2193),
                        chartData(1668709800000, 144.8725),
                        chartData(1668969000000, 144.6782),
                        chartData(1669055400000, 145.1102),
                        chartData(1669141800000, 146.3841),
                        chartData(1669228200000, 147.1496),
                        chartData(1669314600000, 148.9404),
                        chartData(1669573800000, 150.0987),
                        chartData(1669660200000, 150.0571),
                        chartData(1669746600000, 150.6829),
                        chartData(1669833000000, 151.4646),
                        chartData(1669919400000, 152.1193),
                        chartData(1670178600000, 153.1837),
                        chartData(1670265000000, 154.0109),
                        chartData(1670351400000, 153.9878),
                        chartData(1670437800000, 154.5531),
                        chartData(1670524200000, 152.4311),
                        chartData(1670783400000, 154.977),
                        chartData(1670869800000, 156.6212),
                        chartData(1670956200000, 157.7838),
                        chartData(1671042600000, 156.279),
                        chartData(1671129000000, 154.276),
                        chartData(1671388200000, 155.5452),
                        chartData(1671474600000, 155.2361),
                        chartData(1671561000000, 150.5008),
                        chartData(1671647400000, 148.3193),
                        chartData(1671733800000, 141.1731),
                        chartData(1671993000000, 147.2915),
                        chartData(1672079400000, 150.0387),
                        chartData(1672165800000, 150.9439),
                        chartData(1672252200000, 152.0076),
                        chartData(1672338600000, 153.4609),
                        chartData(1672597800000, 156.0795),
                        chartData(1672684200000, 156.7457),
                        chartData(1672770600000, 154.7239),
                        chartData(1672857000000, 154.938),
                        chartData(1672943400000, 153.9128),
                        chartData(1673202600000, 155.0099),
                        chartData(1673289000000, 153.5758),
                        chartData(1673375400000, 154.5708),
                        chartData(1673461800000, 154.0914),
                        chartData(1673548200000, 155.2311),
                        chartData(1673807400000, 156.0612),
                        chartData(1673893800000, 155.6495),
                        chartData(1673980200000, 156.0973),
                        chartData(1674066600000, 155.4679),
                        chartData(1674153000000, 155.5929),
                        chartData(1674412200000, 155.2428),
                        chartData(1674498600000, 154.099),
                        chartData(1674585000000, 152.5608),
                        chartData(1674757800000, 148.4937),
                        chartData(1675017000000, 147.8059),
                        chartData(1675103400000, 151.448),
                        chartData(1675189800000, 148.9565),
                        chartData(1675276200000, 150.2166),
                        chartData(1675362600000, 149.7061),
                        chartData(1675621800000, 150.0977),
                        chartData(1675708200000, 149.7329),
                        chartData(1675794600000, 150.6883),
                        chartData(1675881000000, 150.5549),
                        chartData(1675967400000, 151.2203),
                        chartData(1676226600000, 150.4486),
                        chartData(1676313000000, 150.2631),
                        chartData(1676399400000, 151.0934),
                        chartData(1676485800000, 151.3546),
                        chartData(1676572200000, 150.9786),
                        chartData(1676831400000, 150.345),
                        chartData(1676917800000, 150.5787),
                        chartData(1677004200000, 149.2877),
                        chartData(1677090600000, 148.6658),
                        chartData(1677177000000, 147.4731)
                      ],
                      xValueMapper: (chartData data, _) =>
                          DateTime.fromMillisecondsSinceEpoch(data.time * 1000)
                              .year,
                      yValueMapper: (chartData data, _) => data.nav % 100,
                      // dataLabelSettings: DataLabelSettings(isVisible: false),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 0),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                ),
                  onPressed: () {}, child: Text("Start SIP")
              ),
            )
          ],
        ),
    );
  }
}

class chartData {
  final time;
  final nav;
  chartData(this.time, this.nav);
}
