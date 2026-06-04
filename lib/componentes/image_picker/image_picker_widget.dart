import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'image_picker_model.dart';
export 'image_picker_model.dart';

/// Create an image picker widget for a profile photo upload.
///
/// Outer container:
/// - Width: 120px, Height: 120px
/// - Alignment: center
///
/// Stack widget containing:
///
/// Layer 1 - Circle avatar container:
/// - Width: 110px, Height: 110px
/// - Shape: circle (BorderRadius circular 55px)
/// - Background color: #CCC7C7
/// - Border: 2px solid #4B2E2B
/// - Child: Icon "person" (account_circle)
///   color: #F9F1E4, size: 60px
///   centered inside the circle
///
/// Layer 2 - Camera button (Positioned bottom:0 right:0):
/// - Container width: 32px, height: 32px
/// - Shape: circle (BorderRadiu
class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  late ImagePickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagePickerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 120.0,
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 110.0,
        height: 110.0,
        child: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(55.0),
              child: Container(
                width: 110.0,
                height: 110.0,
                decoration: BoxDecoration(
                  color: Color(0xFFCCC7C7),
                  borderRadius: BorderRadius.circular(55.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Color(0xFF4B2E2B),
                    width: 2.0,
                  ),
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.account_circle_rounded,
                  color: Color(0xFFF9F1E4),
                  size: 60.0,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, 1.0),
              child: Container(
                width: 32.0,
                height: 32.0,
                decoration: BoxDecoration(
                  color: Color(0xFF4B2E2B),
                  borderRadius: BorderRadius.circular(9999.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    width: 2.0,
                  ),
                ),
                child: Icon(
                  Icons.photo_camera_rounded,
                  size: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
