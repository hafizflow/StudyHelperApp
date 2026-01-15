import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Conditions and\nPrivacy Policy'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              'Lorem ipsum dolor sit amet consectetur. Vel euismod odio quam mus suspendisse. Purus tristique amet consequat proin. A in sapien turpis massa nisl. Posuere congue convallis suspendisse ut phasellus. Dui nisl luctus venenatis metus gravida turpis hendrerit.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Nulla ornare malesuada porttitor egestas enim euismod pellentesque tortor eleifend. Convallis in sed augue sit interdum torget ullamcorper nibh.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Vitae aliquam amet cras maecenas. Aliquam tristique nunc feugiat odio semper eget odio. Sed adipiscing lorem eget aliquam porttitor varius semper id.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Bibendum nisi aliquet porta cras. Non integer molestie lacus cursus sed pulvinar purus egestas.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Ultrices ac est praesent convallis viverra vulputate. Eros sodales lacinia id gravida lorem varius egestas id. Vitae varius sapien nibh pulvinar blandit massa. Praesent nibh sem eget.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Eu arcu nunc egestas amet at. Nulla pulvinar egestas faucibus eu pulvinar in pellentesque dolor facilisis.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Dis mattis mauris quis a elementum pellentesque. Donec interdum id cras velit augue sed luctus volutpat nullam. Sed purus adipiscing velit et cras sollicitudin suspendisse. Sagittis leo mauris nisl ornare.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Fringilla mollis nisl tortor porttitor elit. Auctor lacus sed ac sed nam varius. Interdum sit bibendum urna at nunc tetus viverra ultrices. Ut lorem non blandit condimentum neque.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      side: const BorderSide(color: Color(0xFFB8A4E8)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'Decline',
                      style: TextStyle(color: Color(0xFFB8A4E8)),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB8A4E8),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text('I Agree'),
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
