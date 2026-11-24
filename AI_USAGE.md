# AI usage: dsc26-flt-w06

AI tools are allowed in this task. Fill in every section in your own words. This file is read by your Track Mentor, not by the grader.

## 1. Tools I used

- ChatGPT: to review implementation logic, understand README requirements, identify edge cases, and prepare focused tests.
- Flutter test runner: to run public tests and temporary tests for specific requirements.
- PowerShell: to inspect project files and run commands.

## 2. My best prompts


1. Review my existing Flutter implementation against the README requirements. Identify only the specific mismatches and explain the smallest necessary changes without replacing the whole solution.
2. Help me write focused tests for hidden requirements, including exact JSON output, duplicate detection, listener notifications, and permission-flow behavior.


## 3. One place the assistant got the maths or the permission rules wrong

The assistant initially confused population variance with sample variance when implementing `laplacianVariance`. The README required population variance, which divides the sum of squared deviations by the total number of Laplacian values (N) .

## 4. Phone or server: Wiqaya's guided capture

I would run camera permission handling, photo quality checks, capture guidance, and immediate feedback on the phone so the user can complete the process without unnecessary network delays. I would leave evidence verification, secure storage, and final validation to the server because these operations need centralized checks and should not rely entirely on a potentially modified client.
