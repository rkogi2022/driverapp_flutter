import 'package:flutter/material.dart';
import 'legal_details_screen.dart';

class VehicleRegistrationScreen extends StatefulWidget {
  @override
  _VehicleRegistrationScreenState createState() =>
      _VehicleRegistrationScreenState();
}

class _VehicleRegistrationScreenState extends State<VehicleRegistrationScreen> {
  final _modelController = TextEditingController();
  final _plateController = TextEditingController();

  String? _selectedManufacturerType;
  String? _selectedYear;
  String? _selectedColor;

  final List<String> _manufacturerTypes = [
    'Volkswagen',
    'Toyota',
    'Nissan',
    'Passo'
  ];
  final List<String> _years = ['2024', '2023', '2022', '2021'];
  final List<String> _colors = ['Red', 'Blue', 'Black', 'White'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Center(
                  child: Text(
                    'Your Vehicle Information',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 8),
                Center(
                  child: Text(
                    'Register your vehicle to get going.',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16),
                _buildDropdownField(
                    'Vehicle Manufacturer *',
                    _selectedManufacturerType,
                    'Volkswagen',
                    _manufacturerTypes),
                SizedBox(height: 16),
                _buildTextField(
                    'Vehicle Model *', _modelController, 'Golf Variant'),
                SizedBox(height: 16),
                _buildDropdownField('Year *', _selectedYear, 'Year', _years),
                SizedBox(height: 16),
                _buildTextField(
                    'License Plate *', _plateController, 'KDM 001M'),
                SizedBox(height: 16),
                _buildDropdownField(
                    'Vehicle Color *', _selectedColor, 'Color', _colors),
                SizedBox(height: 80), // Add some space at the bottom
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 24,
            right: 24,
            child: Row(
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
                            builder: (context) => LegalDetailsScreen()),
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
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
      String label, TextEditingController controller, String hintText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16, color: Colors.black)),
        SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[400]),
            ),
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField(String label, String? selectedValue,
      String hintText, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16, color: Colors.black)),
        SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[200]!),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButton<String>(
            value: selectedValue,
            hint: Text(hintText, style: TextStyle(color: Colors.grey[400])),
            isExpanded: true,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: items.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
