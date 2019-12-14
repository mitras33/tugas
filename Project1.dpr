program Project1;

uses
  Vcl.Forms,
  Tugas1 in 'Tugas1.pas' {Form2},
  Tugas2 in 'Tugas2.pas' {Form3},
  Tugas3 in 'Tugas3.pas' {Form4},
  Tugas4_1 in 'Tugas4_1.pas' {Form1},
  Tugas4_2 in 'Tugas4_2.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
