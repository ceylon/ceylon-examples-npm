import xml2js { parseXml = parseString }

String xml = "<root><message>Hello Ceylon!</message></root>";

shared void runXmlParser() {
    dynamic {
        parseXml(xml, (dynamic err, dynamic result) {
            print(result.root.message);
        });
    }
}