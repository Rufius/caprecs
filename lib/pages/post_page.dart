import 'package:flutter/material.dart';
import 'package:lifelink/capsule_body_widget.dart';
import 'package:lifelink/capsule_head_widget.dart';
import 'package:lifelink/get_app_bar.dart';
import 'package:lifelink/icons_row_widget.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CapsuleHeadWidget(
            avatarImage: 'assets/tile0.png',
            name: 'Capsule name',
            description: 'My capsule',
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Image.asset('post.png'),
                const SocialMediaIconsRow(),
                const SizedBox(height: 10),
                const Text(
                  '#HAPPYMOOD',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), // hashtags
                const SizedBox(height: 10),

                const Text(
                    'Будучи пользователями этих продуктов в сети, мы понимаем те проблемы с которыми сталкивается пользователь. Иногда лучшее решение приходит тогда, когда сочетаются разные ситуации. Мы осознали сложность процессов построения личного бренда, продажу продукта или информации через разные платформы, и передачу информации и воспоминаний в будущее. Пользования разными приложениями и работка и над каждым из них занимает много времени и ресурсов, а наличия всего необходимого в одном месте оптимизирует и упрощает все процессы, и что важно экономит деньги и время пользователя'), // hashtags
              ],
            ),
          ),
        ],
      ), // End of body
    );
  }
}
