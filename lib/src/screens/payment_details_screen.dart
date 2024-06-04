import 'package:flutter/material.dart';
import 'applicationsuccessful.dart'; // Import the ApplicationSuccessful page

class PaymentDetailsScreen extends StatefulWidget {
  @override
  _PaymentDetailsScreenState createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  final _billingTypeController = TextEditingController();
  final _addressController = TextEditingController();
  final _mpesaAccountHolderNameController = TextEditingController();
  final _mpesaNumberController = TextEditingController();
  String? _selectedMobileMoneyNetwork;

  final List<String> _mobileMoneyNetworks = ['Safaricom', 'Airtel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40), // Spacing
              Center(
                child: Text(
                  'Payment Details',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'We need your M-Pesa Details to pay you',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF8F8F8F),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Billing Type
              Text(
                'Billing Type *',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Billing Type Input Field with Dropdown
              Container(
                margin: EdgeInsets.symmetric(vertical: 2),
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _selectedMobileMoneyNetwork,
                  hint: Text('Person'),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedMobileMoneyNetwork = newValue;
                    });
                  },
                  items: _mobileMoneyNetworks.map((network) {
                    return DropdownMenuItem<String>(
                      value: network,
                      child: Text(network),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 16),
              // Address
              Text(
                'Address *',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Address Input Field
              Container(
                margin: EdgeInsets.symmetric(vertical: 2),
                child: TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    hintText: 'P.O Box 18 00100-Nairobi',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 16),
              // M-Pesa Account Holder Name
              Text(
                'M-Pesa Account Holder Name *',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // M-Pesa Account Holder Name Input Field
              Container(
                margin: EdgeInsets.symmetric(vertical: 2),
                child: TextFormField(
                  controller: _mpesaAccountHolderNameController,
                  decoration: InputDecoration(
                    hintText: 'Qupid Winema',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 8),
              // Full Names Paragraph
              Text(
                'Enter your full names as registered on M-Pesa',
                style: TextStyle(fontSize: 12, color: Color(0xFF8F8F8F)),
              ),
              SizedBox(height: 16),
              // M-Pesa Number
              Text(
                'M-Pesa Number *',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // M-Pesa Number Input Field
              Container(
                margin: EdgeInsets.symmetric(vertical: 2),
                child: TextFormField(
                  controller: _mpesaNumberController,
                  decoration: InputDecoration(
                    hintText: '0700 100100',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 8),
              // M-Pesa Number Paragraph
              Text(
                'Your Kenyan M-Pesa number',
                style: TextStyle(fontSize: 12, color: Color(0xFF8F8F8F)),
              ),
              SizedBox(height: 16),
              // Mobile Money Network
              Text(
                'Mobile Money Network *',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Mobile Money Network Input Field with Dropdown
              Container(
                margin: EdgeInsets.symmetric(vertical: 2),
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _selectedMobileMoneyNetwork,
                  hint: Text('Safaricom'),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedMobileMoneyNetwork = newValue;
                    });
                  },
                  items: _mobileMoneyNetworks.map((network) {
                    return DropdownMenuItem<String>(
                      value: network,
                      child: Text(network),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 8),
              // Mobile Money Network Paragraph
              Text(
                'Your Kenyan M-Pesa number',
                style: TextStyle(fontSize: 12, color: Color(0xFF8F8F8F)),
              ),
              SizedBox(height: 40), // Spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back Button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFE9E9E9),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16), // Spacing
                  // Continue Button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the ApplicationSuccessful page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ApplicationSuccessful(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF003D8E),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40), // Spacing
            ],
          ),
        ),
      ),
    );
  }
}
