import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/live_stream_page.dart';
import 'channel_model.dart';
import 'const.dart';

AppBar MyAppBar({title}) => AppBar(
      title: Text(
        title ?? 'Live TV',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );

class ChannelButton extends StatelessWidget {
  const ChannelButton({
    Key? key,
    required this.channelName,
    required this.onTap,
  }) : super(key: key);
  final String channelName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.7),
            color: kPrimaryColor,
          ),
          height: Get.height * .06,
          width: Get.width * .8,
          child: Center(
              child: Text(
            channelName,
          )),
        ),
      ),
    );
  }
}

class ChannelWidget extends StatelessWidget {
  const ChannelWidget({
    Key? key,
    required this.openWidget,
    required this.channelName,
  }) : super(key: key);
  final String channelName;
  final Widget openWidget;

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedColor: Colors.transparent,
      closedBuilder: (BuildContext context, void Function() action) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.7),
            color: kPrimaryColor,
          ),
          height: Get.height * .06,
          width: Get.width * .8,
          child: Center(
            child: Text(
              channelName,
            ),
          ),
        );
      },
      openBuilder:
          (BuildContext context, void Function({Object? returnValue}) action) {
        return openWidget;
      },
      transitionType: ContainerTransitionType.fadeThrough,
      transitionDuration: const Duration(
        milliseconds: 450,
      ),
    );
  }
}

class BeinWidget extends StatelessWidget {
  const BeinWidget({
    Key? key,
    required this.channelName,
  }) : super(key: key);

  final String channelName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN SPORTS MAX 1',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4064'
                : channelName == 'beIN Sport 720 H265'
                    ? 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4064'
                    : channelName == 'beIN Sport 720'
                        ? 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4063'
                        : channelName == 'beIN Sport 360'
                            ? 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4065'
                            : 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4065',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN SPORTS MAX 2',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4066'
                : channelName == 'beIN Sport 720 H265'
                    ? 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4066'
                    : channelName == 'beIN Sport 720'
                        ? 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4067'
                        : channelName == 'beIN Sport 360'
                            ? 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4068'
                            : 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4068',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
       const ChannelWidget(
          channelName: 'beIN SPORTS MAX 3',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4069',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'beIN SPORTS MAX 4',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4070',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'beIN SPORTS MAX 5',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4071',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'beIN SPORTS MAX 5',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4072',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 1 Premium',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080.first
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H.first
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720.first
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360.first
                            : channelLinks240.first,
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 2 Premium',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080[1]
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H[1]
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720[1]
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360[1]
                            : channelLinks240[1],
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 3 Premium',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080[2]
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H[2]
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720[2]
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360[2]
                            : channelLinks240[2],
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 1',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080[3]
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H[3]
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720[3]
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360[3]
                            : channelLinks240[3],
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 2',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080[4]
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H[4]
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720[4]
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360[4]
                            : channelLinks240[4],
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 3',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080[5]
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H[5]
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720[5]
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360[5]
                            : channelLinks240[5],
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 4',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080[6]
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H[6]
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720[6]
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360[6]
                            : channelLinks240[6],
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 5',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080[7]
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H[7]
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720[7]
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360[7]
                            : channelLinks240[7],
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        ChannelWidget(
          channelName: 'beIN Sport 6',
          openWidget: LiveStream(
            channelLink: channelName == 'beIN Sport 1080'
                ? channelLinks1080[8]
                : channelName == 'beIN Sport 720 H265'
                    ? channelLinks720H[8]
                    : channelName == 'beIN Sport 720'
                        ? channelLinks720[8]
                        : channelName == 'beIN Sport 360'
                            ? channelLinks360[8]
                            : channelLinks240[8],
          ),
        ),
      ],
    );
  }
}

class ADWidget extends StatelessWidget {
  const ADWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'AD Sport Premium 1 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4040',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'AD Sport Premium 2 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4041',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'AD Sport Premium 1',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4001',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'AD Sport 1',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/112',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'AD Sport 2',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/113',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'AD Sport 3',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/114',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'AD Sport 4',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/115',
          ),
        ),
      ],
    );
  }
}

class OSNWidget extends StatelessWidget {
  const OSNWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN ALSAFWA',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4025',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN YaHala  HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4026',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN YAHALA HD Arabic',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/156',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Ya Hala Aflam',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/161',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN MUSALSALAT 2HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4027',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN AL YAWM HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2828',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Alfa Fann',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2830',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN MIX HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3542',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Discovery Turbo',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3543',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN TLC',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3871',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Star Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/159',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Star World',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/160',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Star-Gold-HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3707',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN E',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3284',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Drama',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/968',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Series prime',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2172',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Showecase',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3704',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN MOVIES FIRST+2 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/89',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Mezze',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/975',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN MOVIES BOX OFFICE 1',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/973',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN MOVIES BOX OFFICE 2',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/971',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN MOVIES BOX OFFICE 3',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/981',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Movies Action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/155',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN ON DEMAND EXTRA 1',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2826',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Movies premiere',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2825',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Movies Disney',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/171',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN ON DEMAND EXTRA HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2832',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/153',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Nat Geo',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/157',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Nat Geo People',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/158',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Nat Geo Wild',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/982',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Movies Action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/963',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3946',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Netflix',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3948',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'OSN Movies Family HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/4022',
          ),
        ),
      ],
    );
  }
}

class NetflixWidget extends StatelessWidget {
  const NetflixWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX Action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2418',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX Thriller',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2419',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX SCi-Fi',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2420',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX Horror',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2422',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX SCI FI',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2506',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX N action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2463',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX Action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2116',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX Arabic',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2041',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX ACTION HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2047',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX DRAMA HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2357',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX Classic',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3422',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX ARABIC 2 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3718',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX ARABIC 2',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3719',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'NETFLIX+ ARABIC ',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3537',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Netflix+ Drama',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3536',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Netflix+ Action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3538',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Shahid Action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2423',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Shahid Aflam',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2424',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Shahid Crime 2',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2425',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'HBO Action AR',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3250',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'HBO Arabic',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3251',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'SHAHID Aflam3+',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3252',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Action Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2398',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Box Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2400',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MasterPiece Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2406',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Premiere Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2407',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Thriller Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2408',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'The Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2410',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'The Movies 2',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2411',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'bee Movies',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2929',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'HULU Action',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3695',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'HULU Box office',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3696',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'HULU Arabia',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3697',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Shahid VIP Arabic',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3715',
          ),
        ),
      ],
    );
  }
}

class MBCWidget extends StatelessWidget {
  const MBCWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 1 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/845',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 2 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/846',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 3 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/847',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 4 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/848',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 5 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2114',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Bollywood HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/849',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Masr HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/850',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Masr 2 HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/851',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Drama HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/852',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Action HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/853',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Max HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/854',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Drama+ HD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/856',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 1 SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2771',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 2 SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2772',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 3 SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2773',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 4 SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2774',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC 5 SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2775',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Masr SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2779',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Masr 2 SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2780',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Drama SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2778',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Action SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2777',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'MBC Max SD',
          openWidget: LiveStream(
            channelLink: 'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2776',
          ),
        ),
      ],
    );
  }
}

class FoxWidget extends StatelessWidget {
  const FoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'FOX Rewayat HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/859',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'FOX Life HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/860',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Family Movies HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/861',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'FOX Crime HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/862',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Fox Action',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/863',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Fox Movies',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/867',
          ),
        ),
      ],
    );
  }
}

class SSCWidget extends StatelessWidget {
  const SSCWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'SSC Sport 1 HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3833',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'SSC Sport 2 HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3834',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'SSC Sport 3 HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3835',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'SSC Sport 4 HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3836',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'SSC Sport 5 HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3837',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'SSC Extra 1 HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3838',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'SSC Extra 2 HD',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/3839',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'KSA Sports 1',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2053',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'KSA Sports 2',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2054',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'KSA Sports 3',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2055',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'KSA Sports 4',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/2056',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Alkass 1',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/1461',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Alkass 2',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/1462',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Alkass 3',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/1463',
          ),
        ),
        SizedBox(
          width: Get.width,
          height: Get.height * .015,
        ),
        const ChannelWidget(
          channelName: 'Alkass 4',
          openWidget: LiveStream(
            channelLink:
            'http://ugeen.live:8080/Ugeen_VIPtoG4ZS/q6ZWeE/1464',
          ),
        ),
      ],
    );
  }
}