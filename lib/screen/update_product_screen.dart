import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:live_test_two/model/product.dart';
import 'package:live_test_two/screen/product_list_screen.dart';
import 'package:http/http.dart' as http;

class UpdateProductScreen extends StatefulWidget {
  final Product product;
  const UpdateProductScreen({super.key, required this.product});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _productNameTEController =
      TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _inProgress = false;

  @override
  void initState() {
    super.initState();
    _productNameTEController.text = widget.product.productName;
    _unitPriceTEController.text = widget.product.unitPrice.toString();
    _totalPriceTEController.text = widget.product.totalPrice.toString();
    _imageTEController.text = widget.product.productImage;
    _codeTEController.text = widget.product.productCode;
    _quantityTEController.text = widget.product.quantity.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildNewProductForm(),
      ),
    );
  }

  Widget _buildNewProductForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _productNameTEController,
            decoration: const InputDecoration(
                hintText: 'Name', labelText: 'Product Name'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid product name';
                  }
                  return null;
                },
          ),
          TextFormField(
            controller: _unitPriceTEController,
            decoration: const InputDecoration(
                hintText: 'Unit Price', labelText: 'Unit Price'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid unit price';
                  }
                  return null;
                },
          ),
          TextFormField(
            controller: _totalPriceTEController,
            decoration: const InputDecoration(
                hintText: 'Total Price', labelText: 'Total Price'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid total price';
                  }
                  return null;
                },
          ),
          TextFormField(
            controller: _imageTEController,
            decoration: const InputDecoration(
                hintText: 'Image', labelText: 'Product Image'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid product image';
                  }
                  return null;
                },
          ),
          TextFormField(
            controller: _codeTEController,
            decoration: const InputDecoration(
                hintText: 'Product code', labelText: 'Product Code'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid product code';
                  }
                  return null;
                },
          ),
          TextFormField(
            controller: _quantityTEController,
            decoration: const InputDecoration(
                hintText: 'Quantity', labelText: 'Quantity'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid quantity';
                  }
                  return null;
                },
          ),
          const SizedBox(height: 16),
          _inProgress
              ? const Center(child: CircularProgressIndicator())
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromWidth(double.maxFinite),
                  ),
                  onPressed: _onTapUpdateProductButton,
                  child: const Text('Update Product'),
                )
        ],
      ),
    );
  }

  void _onTapUpdateProductButton() {
    if (_formKey.currentState!.validate()) {
      updateProduct();
    }
  }


  Future<void> updateProduct() async {
    _inProgress = true;
    setState(() {});

    Uri uri = Uri.parse('http://164.68.107.70:6060/api/v1/UpdateProduct/${widget.product.id}');

    Map<String, dynamic> requestBody = {
      "Img": _imageTEController.text,
      "ProductCode": _codeTEController.text,
      "ProductName": _productNameTEController.text,
      "Qty": _quantityTEController.text,
      "TotalPrice": _totalPriceTEController.text,
      "UnitPrice": _unitPriceTEController.text
    };

    try {

      Response response = await http.post(
        uri,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(requestBody),
      );


      final resultBody = json.decode(response.body);

      if (response.statusCode == 200 && resultBody['status'] == "success") {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Product Updated Successfully')),
        );
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const ProductListScreen()),
              (Route route) => false,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update product: ${resultBody['message'] ?? 'Unknown error'}')),
        );
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
    } finally {
      _inProgress = false;
      setState(() {});
    }
  }

  @override
  void dispose() {
    _productNameTEController.dispose();
    _quantityTEController.dispose();
    _totalPriceTEController.dispose();
    _unitPriceTEController.dispose();
    _imageTEController.dispose();
    _codeTEController.dispose();
    super.dispose();
  }
}


