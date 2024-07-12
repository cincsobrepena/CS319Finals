class CodeSnippet {
  final String description;
  final List<CodeLine> codeSnippet;

  CodeSnippet(this.description, this.codeSnippet);
}

class CodeLine {
  final List<CodeSegment> segments;

  CodeLine(this.segments);

  String get fullText {
    return segments.map((segment) => segment.text).join('');
  }
}

class CodeSegment {
  final String text;
  final bool editable;

  CodeSegment(this.text, {this.editable = false});
}

List<CodeSnippet> flutterEasySnippets = [
  CodeSnippet(
    'Fill in the blanks to complete the code for the text widget',
    [
      CodeLine([
        CodeSegment('Text', editable: true),
        CodeSegment('(', editable: true),
        CodeSegment('\'', editable: true),
        CodeSegment('Text Widget'),
        CodeSegment('\'', editable: true),
        CodeSegment(')', editable: true),
        CodeSegment(';', editable: true),
      ]),
    ],
  ),
  CodeSnippet(
    'Fill in the blanks to complete the code for centering a widget',
    [
      CodeLine([
        CodeSegment('Center', editable: true),
        CodeSegment('(', editable: true),
      ]),
      CodeLine([
        CodeSegment('  '),
        CodeSegment('child', editable: true),
        CodeSegment(':', editable: true),
        CodeSegment(' '),
        CodeSegment('Text', editable: true),
        CodeSegment('(', editable: true),
        CodeSegment('\'', editable: true),
        CodeSegment('Centered Text'),
        CodeSegment('\'', editable: true),
        CodeSegment(')', editable: true),
      ]),
      CodeLine([
        CodeSegment(')', editable: true),
      ]),
    ],
  ),
  CodeSnippet(
    'Fill in the blanks to complete the code for creating 3 columns of text widgets',
    [
      CodeLine([
        CodeSegment('Column', editable: true),
        CodeSegment('(', editable: true),
      ]),
      CodeLine([
        CodeSegment('  '),
        CodeSegment('children', editable: true),
        CodeSegment(':', editable: true),
        CodeSegment(' '),
        CodeSegment('[', editable: true),
      ]),
      CodeLine([
        CodeSegment('    '),
        CodeSegment('Text', editable: true),
        CodeSegment('(', editable: true),
        CodeSegment('\'', editable: true),
        CodeSegment('Line 1'),
        CodeSegment('\'', editable: true),
        CodeSegment(')', editable: true),
        CodeSegment(',', editable: true),
      ]),
      CodeLine([
        CodeSegment('    '),
        CodeSegment('Text', editable: true),
        CodeSegment('(', editable: true),
        CodeSegment('\'', editable: true),
        CodeSegment('Line 2'),
        CodeSegment('\'', editable: true),
        CodeSegment(')', editable: true),
        CodeSegment(',', editable: true),
      ]),
      CodeLine([
        CodeSegment('    '),
        CodeSegment('Text', editable: true),
        CodeSegment('(', editable: true),
        CodeSegment('\'', editable: true),
        CodeSegment('Line 3'),
        CodeSegment('\'', editable: true),
        CodeSegment(')', editable: true),
        CodeSegment(',', editable: true),
      ]),
      CodeLine([
        CodeSegment('  '),
        CodeSegment(']', editable: true),
      ]),
      CodeLine([
        CodeSegment(')', editable: true),
      ]),
    ],
  ),
  CodeSnippet(
    'Create a padded text inside a container:',
    [
      CodeLine([
        CodeSegment('Container', editable: false),
        CodeSegment('('),
      ]),
      CodeLine([
        CodeSegment('   '),
        CodeSegment('padding', editable: true),
        CodeSegment(':', editable: true),
        CodeSegment(' '),
        CodeSegment('EdgeInsets', editable: false),
        CodeSegment('.', editable: false),
        CodeSegment('all', editable: false),
        CodeSegment('(16.0)'),
        CodeSegment(','),
      ]),
      CodeLine([
        CodeSegment('   '),
        CodeSegment('child', editable: true),
        CodeSegment(':', editable: true),
        CodeSegment(' '),
        CodeSegment('Text', editable: false),
        CodeSegment('(', editable: true),
        CodeSegment('\'', editable: true),
        CodeSegment('Padded text'),
        CodeSegment('\'', editable: true),
        CodeSegment(')', editable: true),
        CodeSegment(',', editable: true),
      ]),
      CodeLine([
        CodeSegment(')'),
      ]),
    ],
  ),
  CodeSnippet(
    'Create a text field with a label:',
    [
      CodeLine([
        CodeSegment('TextField', editable: false),
        CodeSegment('('),
      ]),
      CodeLine([
        CodeSegment('   '),
        CodeSegment('decoration', editable: true),
        CodeSegment(':', editable: true),
        CodeSegment(' '),
        CodeSegment('InputDecoration', editable: false),
        CodeSegment('('),
      ]),
      CodeLine([
        CodeSegment('       '),
        CodeSegment('labelText', editable: true),
        CodeSegment(':'),
        CodeSegment(' '),
        CodeSegment('\'', editable: true),
        CodeSegment('Enter your name'),
        CodeSegment('\'', editable: true),
        CodeSegment(','),
      ]),
      CodeLine([
        CodeSegment('   '),
        CodeSegment(')'),
      ]),
      CodeLine([
        CodeSegment(')'),
      ]),
    ],
  ),
  CodeSnippet(
    'Create a ListView with ListTile children:',
    [
      CodeLine([
        CodeSegment('ListView', editable: false),
        CodeSegment('('),
      ]),
      CodeLine([
        CodeSegment('   '),
        CodeSegment('children', editable: true),
        CodeSegment(':', editable: true),
        CodeSegment(' '),
        CodeSegment('['),
      ]),
      CodeLine([
        CodeSegment('       '),
        CodeSegment('ListTile', editable: false),
        CodeSegment('('),
        CodeSegment('title', editable: true),
        CodeSegment(':'),
        CodeSegment(' '),
        CodeSegment('Text', editable: false),
        CodeSegment('('),
        CodeSegment('\'', editable: true),
        CodeSegment('Item 1'),
        CodeSegment('\'', editable: true),
        CodeSegment(')'),
        CodeSegment('),'),
      ]),
      CodeLine([
        CodeSegment('       '),
        CodeSegment('ListTile', editable: false),
        CodeSegment('('),
        CodeSegment('title', editable: true),
        CodeSegment(':'),
        CodeSegment(' '),
        CodeSegment('Text', editable: false),
        CodeSegment('('),
        CodeSegment('\'', editable: true),
        CodeSegment('Item 2'),
        CodeSegment('\'', editable: true),
        CodeSegment(')'),
        CodeSegment('),'),
      ]),
      CodeLine([
        CodeSegment('       '),
        CodeSegment('ListTile', editable: false),
        CodeSegment('('),
        CodeSegment('title', editable: true),
        CodeSegment(':'),
        CodeSegment(' '),
        CodeSegment('Text', editable: false),
        CodeSegment('('),
        CodeSegment('\'', editable: true),
        CodeSegment('Item 3'),
        CodeSegment('\'', editable: true),
        CodeSegment(')'),
        CodeSegment('),'),
      ]),
      CodeLine([
        CodeSegment('   '),
        CodeSegment(']'),
      ]),
      CodeLine([
        CodeSegment(')'),
      ]),
    ],
  ),
];

List<CodeSnippet> flutterMediumSnippets = [
  CodeSnippet(
    '',
    [
      CodeLine([
        CodeSegment('', editable: true),
      ]),
    ],
  ),
];

List<CodeSnippet> flutterHardSnippets = [
  CodeSnippet(
    '',
    [
      CodeLine([
        CodeSegment('', editable: true),
      ]),
    ],
  ),
];

List<CodeSnippet> swiftEasySnippets = [
  CodeSnippet(
    '',
    [
      CodeLine([
        CodeSegment('', editable: true),
      ]),
    ],
  ),
];

List<CodeSnippet> swiftMediumSnippets = [
  CodeSnippet(
    '',
    [
      CodeLine([
        CodeSegment('', editable: true),
      ]),
    ],
  ),
];

List<CodeSnippet> swiftHardSnippets = [
  CodeSnippet(
    'Fill in the blanks to complete the code for the text widget',
    [
      CodeLine([
        CodeSegment('Text', editable: true),
        CodeSegment('(', editable: true),
        CodeSegment('\'', editable: true),
        CodeSegment('Text Widget'),
        CodeSegment('\'', editable: true),
        CodeSegment(')', editable: true),
        CodeSegment(';', editable: true),
      ]),
    ],
  ),
];
