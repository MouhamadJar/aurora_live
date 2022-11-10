import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:live_tv/view/channel_list.dart';
import '../models/component.dart';

class ChannelsPage extends StatelessWidget {
  const ChannelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * .015,
            ),
            ChannelButton(
              channelName: 'beIN Sport 1080',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'beIN Sport 1080'),
                );
              },
            ),
            ChannelButton(
              channelName: 'beIN Sport 720 H265',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'beIN Sport 720 H265'),
                );
              },
            ),
            ChannelButton(
              channelName: 'beIN Sport 720',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'beIN Sport 720'),
                );
              },
            ),
            ChannelButton(
              channelName: 'beIN Sport 360',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'beIN Sport 360'),
                );
              },
            ),
            ChannelButton(
              channelName: 'beIN Sport 240',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'beIN Sport 240'),
                );
              },
            ),
            ChannelButton(
              channelName: 'ABU Dhabi',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'ABU Dhabi'),
                );
              },
            ),
            ChannelButton(
              channelName: 'OSN',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'OSN'),
                );
              },
            ),
            ChannelButton(
              channelName: 'Netflix-Hulu-Shahid',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'Netflix'),
                );
              },
            ),
            ChannelButton(
              channelName: 'MBC',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'MBC'),
                );
              },
            ),
            ChannelButton(
              channelName: 'FOX',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'FOX'),
                );
              },
            ),
            ChannelButton(
              channelName: 'SSC',
              onTap: () {
                Get.to(
                  () => const ChannelList(channelName: 'SSC'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
