import 'package:easevents_app/exports.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginWebView extends StatelessWidget {
  const LoginWebView({super.key});

  @override
  Widget build(BuildContext context) {
    final String redirectUrlProvider =
        Provider.of<GoogleSigninRedirectUrlProvider>(context).redirectUrl;

    WebViewController webController =
        _createWebViewController(redirectUrlProvider, context);

    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: webController),
      ),
    );
  }

  WebViewController _createWebViewController(
      String redirectUrl, BuildContext context) {
    return WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..getUserAgent()
      ..setUserAgent(
        'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36',
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) async {
            await _handlePageFinished(url, context);
          },
          onHttpError: (HttpResponseError error) {
            _handleHttpError(error);
          },
          onWebResourceError: (WebResourceError error) {
            _handleWebResourceError(error);
          },
        ),
      )
      ..loadRequest(
        Uri.parse(redirectUrl),
      );
  }

  Future<void> _handlePageFinished(String url, BuildContext context) async {
    if (url.startsWith('https://easevents.app/social-login-redirect')) {
      Uri uri = Uri.parse(url);

      String? code = uri.queryParameters['code'];
      String? state = uri.queryParameters['state'];

      if (code != null && state != null) {
        final signInChecker =
            await GoogleSigninAuthenticateService().googleAuth(code, state);

        await Future.delayed(const Duration(milliseconds: 1500));

        if (signInChecker) {
          if (context.mounted) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => const EVBottomNavigationBar()),
              (Route<dynamic> route) => false,
            );
          }
        }
      } else {
        throw Exception();
      }
    }
  }

  void _handleHttpError(HttpResponseError httpError) async {
    throw Exception(httpError);
  }

  void _handleWebResourceError(WebResourceError webResourceError) async {
    throw Exception(webResourceError);
  }
}
