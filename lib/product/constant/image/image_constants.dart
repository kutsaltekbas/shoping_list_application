class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get onboard => toPng('onboard');
  String get signIn => toPng('sign_in');
  String get resetPassword => toPng('reset_password');
  String get createAccount => toPng('create_account');

  String toPng(String name) => 'asset/images/$name.png';
}
