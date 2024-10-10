class MultipleRequestException {
  List<dynamic> errors;

  MultipleRequestException(this.errors);

  @override
  String toString() {
    return "MultipleRequestException: ${errors.join('\n')}";
  }
}
