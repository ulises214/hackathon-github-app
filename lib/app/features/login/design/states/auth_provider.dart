part of 'states.dart';

class AuthProvider with ChangeNotifier {
  final TextEditingController _phoneController = TextEditingController();

  final PageController _pageController = PageController();

  TextEditingController get phoneController => _phoneController;

  PageController get pageController => _pageController;

  void jumpToNextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    notifyListeners();
  }

  String? validateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo vació';
    }
    return null;
  }

  void authPhoneNumber() {
    log(_phoneController.text);
    jumpToNextPage();
  }

  void authSmsCode(BuildContext context) {
    log(_phoneController.text);
    context.push('/home');
  }
}
