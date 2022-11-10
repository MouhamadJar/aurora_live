import 'package:animations/animations.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../models/channel_model.dart';
import '../models/component.dart';
import '../models/const.dart';
import 'live_stream_page.dart';

class ChannelList extends StatelessWidget {
  const ChannelList({
    Key? key,
    required this.channelName,
  }) : super(key: key);
  final String channelName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: channelName),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: channelName.characters.first == 'b'
            ? BeinWidget(channelName: channelName)
            : channelName.characters.first == 'A'
                ? const ADWidget()
                : channelName.characters.first == 'O'
                    ? const OSNWidget()
                    : channelName.characters.first == 'N'
                        ? const NetflixWidget()
                        : channelName.characters.first == 'M'
                            ? const MBCWidget()
                            : channelName.characters.first == 'F'
                                ? const FoxWidget()
                                : const SSCWidget(),
      ),
    );
  }
}
