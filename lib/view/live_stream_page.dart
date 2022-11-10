import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

import '../controllers/live_controller.dart';

class LiveStream extends StatelessWidget {
  const LiveStream({Key? key, required this.channelLink}) : super(key: key);
  final String channelLink;

  @override
  Widget build(BuildContext context) {
    var liveController = Get.put(LiveController());
    liveController.setLink(channelLink);
    return WillPopScope(
      onWillPop: () async{
        liveController.onClose();
        return true;
      },
      child: Scaffold(
        body: RotatedBox(
          quarterTurns: 45,
          child: SizedBox(
            height: Get.width,
            width: Get.height,
            child: VlcPlayer(
              controller: liveController.videoPlayerController,
              aspectRatio: liveController.videoPlayerController.value.aspectRatio,
            ),
          ),
        ),
      ),
    );
  }
}
