import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CarDetailsController extends GetxController{
  var selectedIndex = 0.obs;
  onChangeIndex(index)=> selectedIndex(index);

  final RxList<XFile?> selectedImages = RxList<XFile?>([]);

  /// add new Image
  pickImageOfSource(ImageSource source)async{
    final ImagePicker _picker = ImagePicker();
    XFile?pickedFile = await _picker.pickImage(source: source);
    selectedImages.add(pickedFile);

  }
}