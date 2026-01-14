// features/auth/presentation/pages/name_input_page.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NameInputPage extends StatelessWidget {
  const NameInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                'What should I call you?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'My Study Buddy',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () => context.go('/home'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// features/auth/presentation/pages/terms_page.dart
class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Terms & Conditions and\nPrivacy Policy',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Text(
                '''Lorem ipsum dolor sit amet consectetur. Vel euismod odio quam risus suspendisse. Purus tristique amet consequat proin. A in sapien turpis a massa nisi. Posuere congue convallis suspendisse ut phasellus. Dui nisi luctus venenatis metus gravida turpis hendrerit.

Nulla ornare sollicitudin donec nec euismod pellentesque tortor eleifend. Convallis in sed augue sit interdum morbi. Eget nibh nunc sit vitae.

Vitae aliquam amet amet cras maecenas. Aliquam tristique nunc feugiat semper eget odio.

Sed adipiscing lorem eget aliquam porttitor varius semper id. Bibendum sed sit aliquet porta cras. Non integer molestie luctus nisl sed pulvinar purus egestas.

Ultrices ac est praesent convallis viverra vulputate. Eros sodales lacinia gravida gravida lorem varius quam risus at. Vitae varius sapien nibh pulvinar blandit massa. Praesent nibh sem ac in.

Eu arcu nunc egestas amet at. Nulla pulvinar egestas faucibus vel nullam dolor pellentesque dolor facilis.

Dis mattis mauris quis a elementum pellentesque. Donec interdum sit cras velit augue sed luctus volutpat nullam. Sed purus adipiscing velit et cras sollicitudin suspendisse. Sagittis leo mauris nibh amet vel viverra.

Fringilla mollis nisl tortor porttitor elit. Auctor lacus sed ac sed nam varius. Interdum sit bibendum urna at nunc netus viverra ultrices. Ut lorem non blandit condimentum neque. Risus aliquam sit faucibus amet sit aliquam sapien viverra purus.

Augue aliquam sed egestas egestas feugiat semper cras aliquet sagittis. Arcu purus mauris risus amet quis odio. Semper in fermentum vitae nisl arcu sed tempus. At a at amet iaculis dictumst porta. Libero odio lacus adipiscing dolor semper commodo eros blandit.

Scelerisque ut tincidunt enim tellus nisl amet diam duis aliquam. Donec sit elit turpis vitae dui nisl velit nulla. Imperdiet vulputate vestibulum tincidunt a cras. Augue bibendum morbi id hendrerit mattis platea.''',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  height: 1.6,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => context.pop(),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      side: BorderSide(color: Colors.grey[300]!),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Decline',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => context.pop(),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'I Agree',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
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
}
