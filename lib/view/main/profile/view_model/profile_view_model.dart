import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:numicorn_mobile/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
import 'package:numicorn_mobile/core/constants/navigation/navigation_constants.dart';
import 'package:numicorn_mobile/view/main/profile/model/profile_model.dart';
import 'package:numicorn_mobile/view/main/profile/service/IProfileService.dart';
import 'package:numicorn_mobile/view/main/profile/service/profile_service.dart';

part 'profile_view_model.g.dart';

class ProfileViewModel = _ProfileViewModelBase with _$ProfileViewModel;

abstract class _ProfileViewModelBase extends BaseViewModel with Store {
  late IProfileService profileService;
  final Dio dio = Dio();
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _image;

  @override
  void setContext(BuildContext context) => this.buildContext = context;

  @override
  void init() {
    profileService = ProfileService(this.buildContext!);
  }

  @observable
  bool loading = false;

  @observable
  UserProfileModel profileModel = UserProfileModel();

  @action
  Future<void> fetchProfileService() async {
    loading = false;
    final response = await profileService.fetchProfile();
    if (response != null) {
      profileModel = response;
      print("title id: " + profileModel.account!.id.toString());
    }
    print("null oldu");
    loading = true;
  }

  @action
  Future<void> getImageFromGallery() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      _image = image;
    }
  }

  Future<void> uploadImage() async {
    if (_image == null) {
      print('Lütfen bir görsel seçiniz.');
      return;
    }

    try {
      String url = 'http://localhost:4000/api/profile/image';
      FormData formData = FormData.fromMap({
        'file':
            await MultipartFile.fromFile(_image!.path, filename: 'file.jpg'),
      });

      Response response = await dio.post(url, data: formData);

      print('Response from server: ${response.data}');
    } catch (e) {
      print('Error uploading image: $e');
    }
  }

  @action
  String getInitials(String text) {
    List<String> words = text.split(' ');
    List<String> initialsList = [];

    for (var word in words) {
      if (word.isNotEmpty) {
        String initial = word[0].toUpperCase();
        initialsList.add(initial);
      }
    }

    return initialsList.join('');
  }

  @action
  Future<void> settingPage() async {
    await navigation.navigateToPage(path: NavigationConstants.SETTING);
  }
}
