// ignore_for_file: public_member_api_docs, sort_constructors_first
/// Represents general status of the form, when the sign in button is clicked.
abstract class FormSubmissionStatus {
  /// Constructor
  const FormSubmissionStatus();
}

/// Represents initial status of the form - when it is loaded
class InitialFormStatus extends FormSubmissionStatus {
  /// Constructor
  const InitialFormStatus();
}

/// Represents the submitting status of the form -
///  when we are sending user credentials to the server and getting response
class FormSubmitting extends FormSubmissionStatus {}

/// Represents the successfully status of the submission -
/// when ge get the response that says given credentials are right
class SubmissionSuccess extends FormSubmissionStatus {
  String bearerToken;
  SubmissionSuccess({
    required this.bearerToken,
  });
}

/// Represents the failure of this submission -
///  when the server doesn't respond, etc.
class SubmissionFailed extends FormSubmissionStatus {
  /// Exception type thats is given with this state
  final String errorMessage;

  /// Constructor
  SubmissionFailed(this.errorMessage);
}
