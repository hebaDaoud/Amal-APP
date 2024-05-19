import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:workapp/constants/appcolor.dart';
import 'package:workapp/helper/functions/checkinternet.dart';
import 'package:workapp/helper/functions/printCurlCommand.dart';
import 'package:workapp/helper/functions/user_info.dart';
import 'package:workapp/helper/functions/showdialog.dart';

class Api {
  static Future<Map<String, dynamic>> makeApiRequest({
    required String url,
    required String method,
    Map<String, dynamic>? body,
    Map<String, PlatformFile>? files,
    Map<String, String>? fields,
  }) async {
    Uri uri = Uri.parse(url);
    Map<String, String> headers = {"Content-Type": "application/json"};
    if (files != null) {
      headers['Content-Type'] = 'multipart/form-data';
    }
    Map<String, dynamic>? storedUserInfo = await getUserInfo();
    if (storedUserInfo != null) {
      if (storedUserInfo['token'] != null) {
        headers['Authorization'] = storedUserInfo['token'];
      }
    }
    Get.dialog(
        const Center(
            child: CircularProgressIndicator(color: AppColor.primaryColor)),
        barrierDismissible: false);
    if (await checkInternet()) {
      try {
        if (method == 'GET') {
          final response = await http.get(uri, headers: headers);
          printCurlCommand(response.request);
          return processResponse(response);
        } else if (method == 'POST') {
          if (files != null) {
            var request = http.MultipartRequest('POST', uri);

            files.forEach((key, file) async {
              request.files.add(await http.MultipartFile.fromPath(
                key,
                file.path!,
                filename: file.name,
                contentType: MediaType('application', 'octet-stream'),
              ));
            });
            request.headers.addAll(headers);
            request.fields.addAll(fields!);
            var responseStreamed = await request.send();
            var response = await http.Response.fromStream(responseStreamed);
            printCurlCommand(response.request);
            return processResponse(response);
          } else {
            var response =
                await http.post(uri, headers: headers, body: jsonEncode(body));
            printCurlCommand(response.request);
            return processResponse(response);
          }
        } else if (method == 'PUT') {
          final response = await http.put(uri, headers: headers, body: body);
          printCurlCommand(response.request);
          return processResponse(response);
        } else if (method == 'DELETE') {
          final response =
              await http.delete(uri, headers: headers, body: jsonEncode(body));
          printCurlCommand(response.request);
          return processResponse(response);
        } else if (method == 'PATCH') {
          final response =
              await http.patch(uri, headers: headers, body: jsonEncode(body));
          printCurlCommand(response.request);
          return processResponse(response);
        } else {
          Get.back();
          throw ('Unsupported method type');
        }
      } catch (error) {
        handleError(error.toString());
        return {'error': error.toString()};
      }
    } else {
      handleError('No Internet Conniction');
      return {'error': 'No Internet Conniction'};
    }
  }

  static Map<String, dynamic> processResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      Get.back();
      final responseData = json.decode(utf8.decode(response.bodyBytes));
      return responseData;
    } else {
      final responseData = json.decode(utf8.decode(response.bodyBytes));
      if (responseData["success"] == false) {
        Get.back();
        alertDialog('Error'.tr, responseData["message"].toString());
        return responseData;
      }
      Get.back();
      alertDialog('Error'.tr, 'status: ${response.statusCode}');
      throw ('Request failed with status: ${response.statusCode}');
    }
  }

  static void handleError(String error) {
    Get.back();
    alertDialog('Error'.tr, error);
  }
}
