unit Tugas4_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
if Combobox1.Text='Kampus' then
begin
   edit1.Text:='UNIKA';
end else
if Combobox1.Text='Fakultas' then
begin
  edit1.Text:='FIKOM';
end else
if Combobox1.Text='Prodi' then
begin
   edit1.Text:='TI';
end;

end;

procedure TForm5.Button2Click(Sender: TObject);
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
