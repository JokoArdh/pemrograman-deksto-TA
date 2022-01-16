unit TA;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo3Change(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.Panel3Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
    if combobox1.Text='Pengajuan Baru KKP' then
    begin
        Panel3.Caption:='400000';
        Label9.Caption:='TOTAL BIAYA PENGAJUAN' + Slinebreak + 'BIMBINGAN KKP KAMU';
        Label10.Caption:='Terbilang Empat Ratus Ribu Rupiah';
    end
    else
    if combobox1.Text='Pengajuan Perpanjangan KKP' then
    begin
         Panel3.Caption:='200000';
         Label9.Caption:='TOTAL BIAYA PENGAJUAN' + Slinebreak + 'BIMBINGAN KKP KAMU';
         Label10.Caption:='Terbilang Dua Ratus Ribu Rupiah';
    end
    else
    if combobox1.Text='Pengajuan Baru Skripsi' then
    begin
         Panel3.Caption:='800000';
         Label9.Caption:='TOTAL BIAYA PENGAJUAN' + Slinebreak + 'BIMBINGAN SKRIPSI KAMU';
         Label10.Caption:='Terbilang Delapan Ratus Ribu Rupiah';
    end
    else
    if combobox1.Text='Pengajuan Perpanjangan Skripsi' then
    begin
         Panel3.Caption:='400000';
         Label9.Caption:='TOTAL BIAYA PENGAJUAN' + Slinebreak + 'BIMBINGAN SKRIPSI KAMU';
         Label10.Caption:='Terbilang Empat Ratus Ribu Rupiah';

    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end
end;

procedure TForm1.Button2Click(Sender: TObject);
var nim : String[11];
begin
    if Edit1.Text=''then
    begin
      ShowMessage('NIM Masih Kosong');
      Edit1.SetFocus;
    end
    else if Edit2.Text=''then
      begin
      ShowMessage('Nama Masih Kosong');
      Edit1.SetFocus;
    end
    else if Edit3.Text=''then
      begin
      ShowMessage('No Hp Masih Kosong');
      Edit1.SetFocus;
    end
    else if Edit4.Text=''then
      begin
      ShowMessage('prodi Masih Kosong');
      Edit1.SetFocus;
    end
    else if Memo1.Text=''then
      begin
      ShowMessage('judul proposal Masih Kosong');
      Edit1.SetFocus;
    end
    else
    begin
      nim := Edit1.Text;
      MessageDlg('Information','Selamat Data' + nim + 'Berhasil Disimpan',
      mtInformation, [mbOK], 0);
    end
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='' ;
  Edit3.Text:='' ;
  Edit4.Text:='' ;
  Memo1.Text:='' ;
  Memo2.Text:='' ;
  Image1.Picture.Clear;
  ComboBox1.Text:='';
  Panel3.Caption:='';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if MessageDlg('Perhatian','Ingin keluar?',mtConfirmation,[mbYes, mbNo],0)=mrYes then
  close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Add('Pengajuan Baru KKP');
  ComboBox1.Items.Add('Pengajuan Perpanjangan KKP');
  ComboBox1.Items.Add('Pengajuan Baru Skripsi');
  ComboBox1.Items.Add('Pengajuan Perpanjangan Skripsi');
  memo1.Clear;
  memo2.Clear;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin

end;

procedure TForm1.ListBox2Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Memo3Change(Sender: TObject);
begin

end;

end.

