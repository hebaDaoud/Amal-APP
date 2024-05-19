import 'package:http/http.dart' as http;

void printCurlCommand(dynamic request) {
  final method = request.method;
  final url = request.url.toString();
  final headers =
      request.headers.entries.map((e) => '-H "${e.key}: ${e.value}"').join(' ');

  String body = '';

  if (request is http.MultipartRequest) {
    final fields =
        request.fields.entries.map((e) => '-F "${e.key}=${e.value}"').join(' ');
    final files = request.files
        .map((file) => '-F "${file.field}=@${file.filename}"')
        .join(' ');

    body = '$fields $files';
  } else if (request is http.Request) {
    body = '--data ${request.body}';
  } else {
    throw ArgumentError('Unsupported request type: ${request.runtimeType}');
  }

  final curlCommand = 'curl -X $method $headers $body $url';
  print(curlCommand);
}
