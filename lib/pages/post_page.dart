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
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Image.asset('assets/post.png'),
                SocialMediaIconsRow(
                    onFavoriteTap: () => _showCommentsSheet(context)),
                const SizedBox(height: 5),
                const Text(
                  '#HAPPYMOOD',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), // hashtags
                const SizedBox(height: 5),

                const SizedBox(
                    height: 100,
                    child: SingleChildScrollView(
                      child: Text(
                          'Будучи пользователями этих продуктов в сети, мы понимаем те проблемы с которыми сталкивается пользователь. Иногда лучшее решение приходит тогда, когда сочетаются разные ситуации. Мы осознали сложность процессов построения личного бренда, продажу продукта или информации через разные платформы, и передачу информации и воспоминаний в будущее. Пользования разными приложениями и работка и над каждым из них занимает много времени и ресурсов, а наличия всего необходимого в одном месте оптимизирует и упрощает все процессы, и что важно экономит деньги и время пользователя'),
                    )),
              ],
            ),
          ),
        ],
      ), // End of body
    );
  }
}

void _showCommentsSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
    ),
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Comments',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            // Comments List
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/${comments[0].avatarUrl}'),
                      ),
                      title: Text(comments[0].authorName),
                      subtitle: Text(comments[0].text),
                      trailing: const Icon(
                        Icons.favorite_outline,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/${comments[1].avatarUrl}'),
                      ),
                      title: Text(comments[1].authorName),
                      subtitle: Text(comments[1].text),
                      trailing: const Icon(
                        Icons.favorite_outline,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/${comments[2].avatarUrl}'),
                      ),
                      title: Text(comments[2].authorName),
                      subtitle: Text(comments[2].text),
                      trailing: const Icon(
                        Icons.favorite_outline,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/${comments[3].avatarUrl}'),
                      ),
                      title: Text(comments[3].authorName),
                      subtitle: Text(comments[3].text),
                      trailing: const Icon(
                        Icons.favorite_outline,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ), // New Comment Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                borderRadius: BorderRadius.circular(25.0), // Rounded corners
                border: Border.all(color: Colors.purple), // Border color
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/profile.png'), // User's avatar URL
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Write a comment...', // Placeholder text
                          border:
                              InputBorder.none, // No border on the text field
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // Code to handle comment submission
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}

// Mock data structure for comments
class Comment {
  final String avatarUrl;
  final String authorName;
  final String text;

  Comment(
      {required this.avatarUrl, required this.authorName, required this.text});
}

// You would fetch this list from your backend or service
List<Comment> comments = [
  Comment(
    avatarUrl: '49.png',
    authorName: 'Hamilton Book',
    text:
        'Стресс является неотъемлемой частью каждого из нас в современном мире, приблизительно 70%.Более 80 % заболеваний от стресса. И как, зная такую статистику, не задуматься.',
  ),
  Comment(
    avatarUrl: '50.png',
    authorName: 'Jessy T',
    text:
        'Стресс - это реакция организма на внешние факторы, как правило. Стремительный темп жизни, физическая и эмоциональная нагрузка.',
  ),
  Comment(
    avatarUrl: '51.png',
    authorName: 'Bright Ideas',
    text:
        'Каждый вдох жизненно важен, чист и непорочен, даже если подвергается угрозе.',
  ),
  Comment(
    avatarUrl: '51.png',
    authorName: 'User One',
    text:
        'Каждый вдох жизненно важен, чист и непорочен, даже если подвергается угрозе.',
  ),
  // Add more comments
];
