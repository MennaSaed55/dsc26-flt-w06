/// The small widget that tells the claimant which angle to shoot next.
///
/// TODO(intern): implement CaptureGuide. See the README for the exact keys
/// and the semantics label `CaptureGuide` must expose.
import 'package:dsc26_flt_w06/capture/capture_angle.dart';
import 'package:flutter/material.dart';

import '../capture/capture_session.dart';

class CaptureGuide extends StatelessWidget {
  const CaptureGuide({super.key, required this.session});

  final CaptureSession session;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: session,
      builder: (context, child) {
        if (session.isComplete) {
          return const Text(
            'Capture complete',
            key: ValueKey('capture-complete'),
          );
        }

        final next = session.nextRequiredAngle!;
        final acceptedCount = (session.progress * CaptureAngle.values.length)
            .round();
        final stepNumber = acceptedCount + 1;
        final label = angleLabel(next);

        return Semantics(
          key: const ValueKey('capture-step'),
          container: true,
          label: 'Step $stepNumber of 8: $label',
          child: ExcludeSemantics(
            child: Text(label, key: const ValueKey('capture-instruction')),
          ),
        );
      },
    );
  }
}
