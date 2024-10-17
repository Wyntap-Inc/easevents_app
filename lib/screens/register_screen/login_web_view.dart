import 'package:easevents_app/exports.dart';
import 'package:easevents_app/providers/google_signin_redirectUrl_provider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginWebView extends StatelessWidget {
  const LoginWebView({super.key});

  @override
  Widget build(BuildContext context) {
    final String redirectUrlProvider =
        Provider.of<GoogleSigninRedirectURLProvider>(context).redirectUrl;

    WebViewController webController =
        _createWebViewController(redirectUrlProvider);

    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: webController),
      ),
    );
  }

  WebViewController _createWebViewController(String redirectUrl) {
    return WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..getUserAgent()
      ..setUserAgent(
        'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36',
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) async {
            await _handlePageFinished(url);
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

  Future<void> _handlePageFinished(String url) async {
    if (url.startsWith('https://easevents.app/social-login-redirect')) {
      Uri uri = Uri.parse(url);

      String? code = uri.queryParameters['code'];
      String? state = uri.queryParameters['state'];

      if (code != null) {
        await Future.delayed(const Duration(seconds: 2));
        print('The Code! $code');
        print('The State! $state');
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
