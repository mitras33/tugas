unit Tugas4_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var x : integer;
begin
x:=Strtoint(edit1.Text);
if (x mod 2)=0 then
begin
  edit2.Text:='Bilangan Genap';
end else
begin
  edit2.Text:='Bilangan Ganjil';
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit1.SetFocus
end;

procedure TForm1.Button3Click(Sender: TObject);
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
