import fast.html.parser { parseHtml = parse }
import request.api { api }
import request.client { client }

shared void runHtmlRequest() {

    dynamic {
        dynamic request
                = api(dynamic [
                    type = "basic";
                    define = dynamic [ request = client; ];
                ]);

        request.get("https://ceylon-lang.org/",
                (dynamic err, dynamic res, dynamic body) {
            print(res.statusMessage);
            dynamic root = parseHtml(body);
            dynamic title = root.querySelector("head title").text;
            print(title);
        });

    }
}