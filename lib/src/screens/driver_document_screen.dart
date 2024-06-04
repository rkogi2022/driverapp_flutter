import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'payment_details_screen.dart';

class DriverDocumentScreen extends StatefulWidget {
  @override
  _DriverDocumentScreenState createState() => _DriverDocumentScreenState();
}

class _DriverDocumentScreenState extends State<DriverDocumentScreen> {
  final _nationalIdController = TextEditingController();
  final _profilePhotoController = TextEditingController();
  final _drivingLicenseController = TextEditingController();
  final _ntsaPsvLicenseController = TextEditingController();
  final _policeClearanceController = TextEditingController();
  final _ntsaInspectionReportController = TextEditingController();
  final _logbookController = TextEditingController();
  final _vehiclePhotoController = TextEditingController();

  Future<void> _openFileExplorer(TextEditingController controller) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      String? filePath = result.files.single.path;
      setState(() {
        controller.text = filePath ?? '';
      });
    }
  }

  Widget buildFileUploadField(String label, TextEditingController controller) {
    return GestureDetector(
      onTap: () => _openFileExplorer(controller),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: label,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              children: const [
                TextSpan(
                  text: ' *',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.upload_file, color: Colors.grey[700]),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    controller.text.isEmpty
                        ? 'Upload file'
                        : controller.text.split('/').last,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Column(
          children: [
            SizedBox(height: 24),
            Center(
              child: Column(
                children: [
                  Text(
                    'Driver Documents',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Please upload the required documents.',
                    style: TextStyle(fontSize: 16, color: Color(0xFF8F8F8F)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildFileUploadField(
                        'National ID Photo', _nationalIdController),
                    buildFileUploadField(
                        'Profile Photo', _profilePhotoController),
                    buildFileUploadField(
                        'Regular (non-PSV) Driving License Photo',
                        _drivingLicenseController),
                    buildFileUploadField('NTSA PSV License (Badge) Photo',
                        _ntsaPsvLicenseController),
                    buildFileUploadField(
                        'Police Clearance Certificate (Certificate of Good Conduct)',
                        _policeClearanceController),
                    buildFileUploadField('NTSA Inspection Report',
                        _ntsaInspectionReportController),
                    buildFileUploadField(
                        'Vehicle/Boda Logbook or Sales Agreement',
                        _logbookController),
                    buildFileUploadField(
                        'Vehicle/Boda Photo', _vehiclePhotoController),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE9E9E9),
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentDetailsScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF003D8E),
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
