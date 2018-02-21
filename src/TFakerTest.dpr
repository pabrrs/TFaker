program TFakerTest;

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  Faker in 'Faker.pas',
  FakerTest in 'FakerTest.pas';

{$R *.RES}

begin

  DUnitTestRunner.RunRegisteredTests;

end.
