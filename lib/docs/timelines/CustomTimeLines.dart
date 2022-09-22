import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CustomTimelines extends StatefulWidget {
  const CustomTimelines({Key? key}) : super(key: key);

  @override
  State<CustomTimelines> createState() => _CustomTimelinesState();
}

class _CustomTimelinesState extends State<CustomTimelines> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.only(top: 8),
        child: Timeline.tileBuilder(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          theme: TimelineTheme.of(context).copyWith(
            nodePosition: 0,
            connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                  thickness: 1,
                  color: Colors.black,
                ),
            indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                  size: 15,
                  color: Color(0xff295985),
                ),
          ),
          builder: TimelineTileBuilder.connectedFromStyle(
            connectorStyleBuilder: (context, index) {
              return ConnectorStyle.solidLine;
            },
            lastConnectorStyle: ConnectorStyle.transparent,
            indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
            nodePositionBuilder: (context, int) => 0,
            indicatorPositionBuilder: (context, int) => 0,
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) {
              Color statusTitleColor = Colors.black;

              // if (tmpStatus[index]["status"].contains(status)) {
              //   statusTitleColor = Constants.redTheme;
              //   if (tmpStatus[0]["status"] == 4) {
              //     statusTitleColor = Colors.black;
              //   }
              // }
              // if (tmpStatus[0]["status"] == 4) {
              //   statusTitleColor = Colors.black;
              // }

              return Container(
                margin: EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: Text(
                        'CHECK OUT DI TOKO',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: statusTitleColor,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '2022-07-20 15:20:24',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: 2,
          ),
        ),
      ),
    );
  }
}
