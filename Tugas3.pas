unit Tugas3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var x :real;
pesan:String;
begin
x:=StrTofloat(Edit1.Text);
if (x>=80) and (x<=100) then
begin
  edit2.Text:='A';
end else
if (x>=60) and (x<=79) then
begin
  edit2.Text:='B';
end else
if (x>=40) and (x<=59) then
begin
  edit2.Text:='C';
end else
if (x>=20) and (x<=39) then
begin
  edit2.Text:='D';
end else
if x<=19 then
begin
  edit2.Text:='E';
end else
if x>100 then
begin
  pesan:='Masukkan Angka 1 sampai 100';
  MessageDlg(pesan,mtError,[mbOK],0);
end;
end;
procedure TForm4.Button2Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
edit1.SetFocus;
end;

procedure TForm4.Button3Click(Sender: TObject);
var pesan:string;
begin
pesan:='Yakin ingin keluar...!!!';
case MessageDlg(pesan,mtConfirmation,[mbYes,mbNO],0) of
mrYes:
begin
  Close;
end;
mrNO:
begin
   Edit1.SetFocus;
end;
end;

end;

end.
