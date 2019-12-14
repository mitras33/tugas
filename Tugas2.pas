unit Tugas2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var a,b,c,d,e:real;

begin
a:=strtofloat(edit1.Text);
b:=strtofloat(edit2.Text);
c:=strtofloat(edit3.Text);
d:=strtofloat(edit4.Text);
e:=(a*35/100)+(b*25/100)+(c*20/100)+(d*20/100);
edit5.Text:=floattostr(e);
if (e>=90) and (e<=100) then
begin
  edit6.Text:='A';
end else
if (e>=75) and (e<=90) then
begin
  edit6.Text:='B';
end else
if (e>=60) and (e<=75) then
begin
  edit6.Text:='C';
end else
if (e>=45) and (e<=60) then
begin
  edit6.Text:='D';
end else
if e<=45 then
begin
  edit6.Text:='Program Ulang';
end;

end;
procedure TForm3.Button2Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit1.SetFocus
end;

procedure TForm3.Button3Click(Sender: TObject);
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
