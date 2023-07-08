import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({Key? key}) : super(key: key);

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  final controller = StoryController();
  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItems = [
      StoryItem.text(
          title: 'Flutter Story View', backgroundColor: Colors.black45),
      StoryItem.pageImage(
          url:
              'https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png',
          controller: controller),
      StoryItem.pageImage(
          url:
              'https://pbs.twimg.com/profile_images/1141781661551665153/BMnvVd2u_400x400.jpg',
          controller: controller),
    ];
    return StoryView(
      storyItems: storyItems,
      controller: controller,
      repeat: true,
      onComplete: () {},
      onVerticalSwipeComplete: (direction) {
        if (direction == Direction.down) {
          Navigator.pop(context);
        }
      },
    );
  }
}
