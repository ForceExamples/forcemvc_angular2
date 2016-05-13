library fmvc_angular2;

import 'package:logging/logging.dart';
import 'package:forcemvc/force_mvc.dart';

@Controller
class XController {

  @RequestMapping(value: "/json", method: RequestMethod.GET)
  Map<String, dynamic> showMeSomeLuv(Locale locale, Model model) {
    return const <String, dynamic> {
      'works': 'well'
    };
  }
}

main() {
  WebApplication app = new WebApplication(startPage: 'index.html');

  app.setupConsoleLog(Level.FINEST);
  app.static("/", "index.html");
  app.start();
}