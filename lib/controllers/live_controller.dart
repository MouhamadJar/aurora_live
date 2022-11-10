import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:get/get.dart';

class LiveController extends GetxController {
  RxString channelLink = ''.obs;
  late VlcPlayerController videoPlayerController;

  void setLink(String link) {
    channelLink.value = link;
    videoPlayerController = VlcPlayerController.network(
      channelLink.value,
      hwAcc: HwAcc.disabled,
      autoPlay: true,
      options: VlcPlayerOptions(),
      autoInitialize: true,
    );
    update();
  }
  @override
  void onClose() {
    videoPlayerController.dispose();
    print('\n cleared successfully');
    super.onClose();
  }
}
