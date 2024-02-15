import 'package:week_5/app/data/model/post_model.dart';
import 'package:week_5/app/data/model/story_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';
import 'package:week_5/app/data/model/bottomNavbar_model.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final BottomNavigationModel bottomNavigationModel = BottomNavigationModel();
  final storyController = StoryController();
  PostModel postModel = PostModel(
    namaAkun: 'Romario',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
    fotoProfile: 'foto_profile',
    jumlahLike: 1,
    isLike: false,
    postingGambar: 'foto_profile',
    isSponsor: true,
  );

  List<StoryModel> storyModel = [];
  @override
  void onInit() {
    loadStoryModel();
    super.onInit();
  }

  void loadStoryModel() {
    storyModel = [
      StoryModel(
        image: 'foto_profile',
        namaAkun: 'Romario',
        storyItems: [
          StoryItem.text(
            title: "Hello Guys this is my instagram Slicing UI page",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "LOVE MOTION LAB",
            backgroundColor: Colors.red,
          ),
        ],
        isLoginAccount: true,
      ),
      StoryModel(
        image: 'foto_profile',
        namaAkun: 'Ari',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
            caption: "Still sampling",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'foto_profile',
        namaAkun: 'Caca',
        storyItems: [
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
            caption: "Still sampling",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'foto_profile',
        namaAkun: 'Laode',
        storyItems: [
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
            caption: "Still sampling",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'foto_profile',
        namaAkun: 'Dahi',
        storyItems: [
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
            caption: "Still sampling",
            controller: storyController,
          ),
        ],
      ),
    ];
    update();
  }

  void changeIconLike() {
    postModel.isLike = !postModel.isLike;
    if (postModel.isLike) {
      postModel.jumlahLike++;
    } else {
      postModel.jumlahLike--;
    }
    update();
  }

  void toStoryPageView(
    List<StoryItem>? storyItems,
  ) {
    Get.toNamed(Routes.SNAP_GRAM, arguments: {
      'story': storyItems,
    });
  }
}
