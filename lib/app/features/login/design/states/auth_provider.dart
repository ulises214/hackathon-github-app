part of 'states.dart';

class AuthProvider with ChangeNotifier {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final PageController _pageController = PageController();

  TextEditingController get phoneController => _phoneController;

  TextEditingController get nameController => _nameController;

  PageController get pageController => _pageController;

  void jumpToNextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    notifyListeners();
  }

  void authPhoneNumber() {
    log(_phoneController.text);
    jumpToNextPage();
  }

  void authSmsCode(BuildContext context, {bool isRegister = false}) {
    phoneController.clear();
    nameController.clear();
    _pageController.jumpToPage(0);
    isRegister ? context.push('/') : context.push('/home');
  }

  void register() {
    log(_phoneController.text);
    log(_nameController.text);
    jumpToNextPage();
  }
}
