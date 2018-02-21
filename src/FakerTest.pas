unit FakerTest;

interface

uses
  TestFramework, Faker;

type
  TFakerTest = class(TTestCase)
  private
    procedure checkInArray(const aValue: string; const arrValues: array of string);

  published
    procedure TestLoremIpsum;
    procedure TestFirstName;
    procedure TestLastName;
    procedure TestFullName;
    procedure TestEmail;
    procedure TestUserName;
    procedure TestPassword;
    procedure TestbirthDate;
    procedure TestThigs;
    procedure TestOtan;
    procedure TestWord;
    procedure TestText;
  end;

implementation

{ TFakerTest }

uses
  System.sysutils, dateutils, System.StrUtils, types;

procedure TFakerTest.checkInArray(const aValue: string; const arrValues: array of string);
var
  _: string;
  find: Boolean;
begin
  find := false;
  for _ in arrValues do
  begin
    find := ContainsText(_, aValue);
    if find then
      break;
  end;
  Check(find);
end;

procedure TFakerTest.TestbirthDate;
begin

  Check(YearsBetween(now, TFaker.birthDate) <= 100);

end;

procedure TFakerTest.TestEmail;
const
  domain = 'xpto.domain.io';
var
  customEmail: string;
begin

  checkfalse(TFaker.email.IsEmpty);

  customEmail := TFaker.email(domain);

  Check(ContainsText(customEmail, domain));

end;

procedure TFakerTest.TestFirstName;
begin

  checkInArray(TFaker.firstName, TFaker.NAMES);

end;

procedure TFakerTest.TestFullName;
begin

  checkInArray(TFaker.fullName, TFaker.NAMES);

end;

procedure TFakerTest.TestLastName;
begin

  checkInArray(TFaker.lastName, TFaker.NAMES);

end;

procedure TFakerTest.TestLoremIpsum;
begin

  Check(Length(TFaker.LOREM_IPSUM) > 100);

end;

procedure TFakerTest.TestOtan;
const

  X = 23;
  P = 15;
  T = 19;
  O = 14;

  _X = 'X-ray';
  _P = 'Papa';
  _T = 'Tango';
  _O = 'Oscar';

begin

  checkInArray(TFaker.otan, TFaker.OTAN_ALPHABET);

  Check(TFaker.OTAN_ALPHABET[X] = _X);
  Check(TFaker.OTAN_ALPHABET[P] = _P);
  Check(TFaker.OTAN_ALPHABET[T] = _T);
  Check(TFaker.OTAN_ALPHABET[O] = _O);

end;

procedure TFakerTest.TestPassword;
begin

  checkfalse(TFaker.password.IsEmpty);

end;

procedure TFakerTest.TestText;
const
  wordsCount = 150;
var
  textWords: TStringDynArray;

begin

  textWords := SplitString(TFaker.text(wordsCount), ' ');
  checkequals(wordsCount, Length(textWords));

  checkfalse(TFaker.text().IsEmpty());

end;

procedure TFakerTest.TestThigs;
begin

  checkInArray(TFaker.thing, TFaker.THINGS);

end;

procedure TFakerTest.TestUserName;
var
  username: string;
begin

  username := TFaker.username;

  checkfalse(username.IsEmpty);

  checkfalse(AnsiMatchStr(' ', username));
  checkfalse(AnsiMatchStr('@', username));

end;

procedure TFakerTest.TestWord;
begin

  checkInArray(TFaker.word, TFaker.words);

end;

initialization

RegisterTest(TFakerTest.Suite);

end.
