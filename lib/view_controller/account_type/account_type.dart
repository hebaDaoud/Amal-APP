import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workapp/constants/appcolor.dart';
import 'package:workapp/constants/approutes.dart';
import 'package:workapp/view_controller/account_type/account_type_controller.dart';

class AccountType extends StatelessWidget {
  const AccountType({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AccountTypeController());
    return GetBuilder<AccountTypeController>(
        builder: (controller) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              // iconTheme: const IconThemeData(color: Colors.black45),
            ),
            body: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Account Type'.tr,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Select how did you want to start with work'.tr,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 145,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          SvgPicture.asset('assets/images/company.svg'),
                          const SizedBox(width: 38),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Company'.tr,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Manage your company whit hiring'.tr,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'and work with pepole esly'.tr,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(height: 6),
                              MaterialButton(
                                onPressed: () {
                                  // Get.toNamed(AppRoute.homeBen);
                                },
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                child: Text('Select'.tr,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 145,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/employee.svg'),
                          const SizedBox(width: 18),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Company'.tr,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Manage your company whit hiring'.tr,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'and work with pepole esly'.tr,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(height: 6),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                child: Text('Select'.tr,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 145,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/freelace.svg'),
                          const SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Company'.tr,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Manage your company whit hiring'.tr,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'and work with pepole esly'.tr,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(height: 6),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                child: Text('Select'.tr,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
