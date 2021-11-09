import 'social-media-generic.dart';

class TwitterProfileEmbedData extends SocialMediaGenericEmbedData {
  final String username;
  final double? aspectRatio;

  const TwitterProfileEmbedData(
      {required this.username, this.aspectRatio = 3 / 4})
      : super(aspectRatio: aspectRatio);

  @override
  String get htmlScriptUrl => 'https://platform.twitter.com/widgets.js';

  @override
  String get htmlBody => """
    <a class="twitter-timeline" data-theme="light" href="https://twitter.com/$username?ref_src=twsrc%5Etfw"></a>
    <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
  """;
}
