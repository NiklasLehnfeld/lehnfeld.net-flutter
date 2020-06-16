import 'dart:js' as js;

class WebUtils {
    static launchUrl(String url) => js.context.callMethod("open", [url]);
}