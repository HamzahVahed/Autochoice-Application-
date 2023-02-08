unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Grids, DBGrids, Spin, Buttons,unit2,
  jpeg;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    LblName: TLabel;
    LblSurname: TLabel;
    LblAge: TLabel;
    LblEmail: TLabel;
    EdtName: TEdit;
    EdtSrname: TEdit;
    ChkBoxAge: TCheckBox;
    ButLogin: TButton;
    EdtEmail: TEdit;
    PnlMain: TPanel;
    ButAdminLogin: TButton;
    TabSheet2: TTabSheet;
    Shape1: TShape;
    LblCompany: TLabel;
    LblTrans: TLabel;
    Label4: TLabel;
    Pnl2: TPanel;
    DBGrid1: TDBGrid;
    CmbTrans: TComboBox;
    Pnl3: TPanel;
    RedtPreview: TRichEdit;
    btnPreview: TButton;
    BtnOrder: TButton;
    TabSheet3: TTabSheet;
    Shape2: TShape;
    PnlDraw: TPanel;
    RedtDraw: TRichEdit;
    BitBtn1: TBitBtn;
    PnlPrizes: TPanel;
    PnlPrize1: TPanel;
    PnlPrize2: TPanel;
    PnlPrize3: TPanel;
    BtnCheckPrize: TButton;
    TabSheet4: TTabSheet;
    Shape4: TShape;
    PnlAdmin: TPanel;
    BtnTotal: TButton;
    RedtAdminInfo: TRichEdit;
    CmbCompany: TComboBox;
    CmbColor: TComboBox;
    Label1: TLabel;
    LblColor: TLabel;
    PnlAdminInfo: TPanel;
    PnlDraw1: TPanel;
    PnlSearch: TPanel;
    BitBtn2: TBitBtn;
    TabSheet5: TTabSheet;
    Shape3: TShape;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image2: TImage;
    Panel5: TPanel;
    Image4: TImage;
    PnlInfom: TPanel;
    Image5: TImage;
    PnlUser: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    TabSheet6: TTabSheet;
    Panel8: TPanel;
    Shape5: TShape;
    PnlAdminEdt: TPanel;
    EdtAddMleage: TEdit;
    EdtAddModel: TEdit;
    CmbAddCompany: TComboBox;
    EdtAddYear: TEdit;
    CmbAddTrans: TComboBox;
    EdtColor: TEdit;
    EdtPrice: TEdit;
    BtnADD: TButton;
    BitBtn3: TBitBtn;
    LblAddCompany: TLabel;
    LblAddYear: TLabel;
    LblAddMileage: TLabel;
    LblAddModel: TLabel;
    LblAddColor: TLabel;
    LblAddPrice: TLabel;
    LblAddrRans: TLabel;
    Button1: TButton;
    lblPrice: TLabel;
    cmbPrice: TComboBox;
    btnEmail: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ButLoginClick(Sender: TObject);
    procedure ButAdminLoginClick(Sender: TObject);
    procedure BtnCheckPrizeClick(Sender: TObject);
    procedure CmbTransChange(Sender: TObject);
    procedure CmbCompanyChange(Sender: TObject);
    procedure CmbColorChange(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure BtnOrderClick(Sender: TObject);
    procedure BtnTotalClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtnADDClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure cmbPriceChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   function checkemail(sCheck:string):string;
  end;

var
  Form1: TForm1;
  arrPrize :array[1..5] of string ;
  randomcode:integer;
  LogName:string;
  LogSurname:string;
  ID:string;
  Email:string;
  sDate:string;
  sTime:string;
  LogOn:textfile;
  model:string;
  company:string;
  year:string;
  milage:string;
  price:string;
  colour:string;
  trans:string;
  txtfile:textfile;
  iTotal:integer;
  iTotal2:integer;
  iFinal:integer;
  Iline:integer;
  sPrize:string;
  sTotal:string;
 implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.ButLoginClick(Sender: TObject);
begin
LogName:=EdtName.Text;      //CHECKS TO SEE IF THE NAME IS VALID
LogSurname:=EdtSrname.Text;
Email:=EdtEmail.Text;
if EdtName.Text='' then
begin
ShowMessage('Enter a valid name');
EdtName.SetFocus;
end;
if EdtSrname.Text='' then
begin
ShowMessage('Enter a valid surname');
EdtSrname.SetFocus;
end;
if ChkBoxAge.Checked then
begin
ShowMessage('Welcome');
TabSheet2.Show;
PnlSearch.hide;
PnlUser.Show;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
sLineTxt:string;
totalsales:integer;
begin
totalsales:=0;
AssignFile(txtfile,'Admin.txt');
Reset(txtfile);
while not eof (txtfile) do
begin
Readln(txtfile,sLineTxt);
if (sLineTxt<>'') then
begin
Inc(totalsales);
end;
end;
RedtAdminInfo.Lines.Add('Total Number of Sales: '+IntToStr(totalsales));
end;

function TForm1.checkemail(sCheck: string): string;
var
bPresent:boolean;
iChar:char;
c,i:integer;
begin
c:=0;
for I := 1 to Length(Email) do
begin
iChar:=Email[i];
case iChar of
'@':
begin
c:=c+1;
end;
end;
end;
if c=1 then
begin
ButLogin.Enabled:=true;
ShowMessage('Email is valid.');
end
else if c<>1 then
begin
ShowMessage('Please enter a valid email.');
EdtEmail.SetFocus;
exit;
end;
end;

procedure TForm1.btnEmailClick(Sender: TObject);
begin
Email:=EdtEmail.Text;
checkemail(Email);
end;

procedure TForm1.CmbTransChange(Sender: TObject);
begin
with unit2.DataModule2 do
begin
if CmbTrans.ItemIndex=0 then
begin
ADOTable1.Filter := 'Transmisson=''Auto''';
ADOTable1.Filtered := true;
end
else
ADOTable1.Filter:='Transmisson=''Manual''';
end;
end;

procedure TForm1.CmbColorChange(Sender: TObject);
begin
with unit2.DataModule2 do
begin
if CmbColor.ItemIndex=0 then
begin
ADOTable1.Filter := 'Colour=''Red''';
ADOTable1.Filtered := true;
end
else if CmbColor.ItemIndex=1 then
begin
ADOTable1.Filter:='Colour=''Blue''';
ADOTable1.Filtered := true;
end
else if CmbColor.ItemIndex=2 then
begin
ADOTable1.Filter:='Colour=''Black''';
ADOTable1.Filtered := true;
end
else if CmbColor.ItemIndex=3 then
begin
ADOTable1.Filter:='Colour=''Grey''';
ADOTable1.Filtered := true;
end
else if CmbColor.ItemIndex=4 then
begin
ADOTable1.Filter:='Colour=''White''';
ADOTable1.Filtered := true;
end;
end;
end;
procedure TForm1.CmbCompanyChange(Sender: TObject);
begin
with unit2.DataModule2 do
begin
if CmbCompany.ItemIndex=0 then
begin
ADOTable1.Filter := 'Company=''Nissan''';
ADOTable1.Filtered := true;
end
else if CmbCompany.ItemIndex=1 then
begin
ADOTable1.Filter:='Company=''Toyota''';
ADOTable1.Filtered := true;
end
else if CmbCompany.ItemIndex=2 then
begin
ADOTable1.Filter:='Company=''Volks Wagen''';
ADOTable1.Filtered := true;
end;
end;
end;


procedure TForm1.cmbPriceChange(Sender: TObject);
begin
with unit2.DataModule2 do
begin
if cmbPrice.ItemIndex=0 then
begin
ADOTable1.Filter:='(Price>50000) and (Price<99999 )';
ADOTable1.Filtered:=true;
end
else if cmbPrice.ItemIndex=1 then
begin
ADOTable1.Filter:='(Price>100000) and (Price<149999)';
ADOTable1.Filtered:=true;
end
else if cmbPrice.ItemIndex=2 then
begin
ADOTable1.Filter:='(Price>150000) and (Price<199999)';
ADOTable1.Filtered:=true;
end
else if cmbPrice.ItemIndex=3 then
begin
ADOTable1.Filter:='(Price>200000) and (Price<249999)';
ADOTable1.Filtered:=true;
end
else if cmbPrice.ItemIndex=4 then
begin
ADOTable1.Filter:='(Price>250000) and (Price<310000)';
ADOTable1.Filtered:=true;
end;
end;
end;

procedure TForm1.BtnTotalClick(Sender: TObject);
var
sLine:string;
begin
Iline:=0;
AssignFile(txtfile,'Admin.txt');
Reset(txtfile);
iFinal:=0;
while not eof (txtfile) do
begin
Readln(txtfile,iTotal2);
iFinal:=iFinal+iTotal2;
end;
RedtAdminInfo.Lines.Add('Total Revenue : '+'R'+IntToStr(iFinal));
end;

procedure TForm1.ButAdminLoginClick(Sender: TObject);
var
code:string;
admin:string;
begin
admin:='QAZXCVB';
code:=InputBox('Enter code','Please enter a code','');
if code=admin then
begin
ShowMessage('Welcome back');
AssignFile(LogOn,'Admin Login.txt');
Append(LogOn);
sDate:='Date logged on: '+ DateToStr(Date);
sTime:='Time logged on: '+ TimeToStr(Time);
Writeln(LogOn,sDate);
Writeln(LogOn,sTime);
CloseFile(LogOn);
PnlAdminInfo.show;
PnlDraw1.hide;
PnlSearch.hide;
PnlAdminInfo.hide;
PnlInfom.hide;
TabSheet4.Show;
PnlAdminEdt.hide;
PnlSearch.SHOW;
PnlDraw1.SHOW;
PnlInfom.SHOW;
end
else
begin
ShowMessage('Code invalid.Please try again');
end;
end;

procedure TForm1.BtnOrderClick(Sender: TObject);
var
iNo:integer;
begin
ShowMessage('Thanks for shopping with us. You will receive confirmation shortly');
AssignFile(txtfile,'Admin.txt');
Append(txtfile);
iTotal:=StrToInt(price);
sTotal:=price;
Writeln(txtfile,sTotal);
CloseFile(txtfile);
unit2.DataModule2.ADOTable1.Delete;
TabSheet3.Show;
PnlSearch.show;
PnlDraw1.Hide;
end;

procedure TForm1.btnPreviewClick(Sender: TObject);
begin
RedtPreview.Clear;
with unit2.DataModule2 do
begin
model:= ADOTable1['Model'];
company:= ADOTable1['Company'];
year:=ADOTable1['ModelYear'];
milage:=ADOTable1['Mileage'];
colour:=ADOTable1['Colour'];
trans:=ADOTable1['Transmisson'];
price:=ADOTable1['Price'];
RedtPreview.Lines.Add('Vehcile Details');
RedtPreview.Lines.Add('Company : '+company);
RedtPreview.Lines.Add('Model : '+model);
RedtPreview.Lines.Add('Year : '+year);
RedtPreview.Lines.Add('Mileage : '+milage+' km');
RedtPreview.Lines.Add('Colour : '+colour);
RedtPreview.Lines.Add('Price : '+'R'+price);
end;
 BtnOrder.Enabled:=true;
end;

procedure TForm1.BtnADDClick(Sender: TObject);
var
ino:integer;
begin
with unit2.DataModule2 do
begin
ADOTable1.Last;
ADOTable1.Insert;
ADOTable1['Model']:=EdtAddModel.Text;
ADOTable1['ModelYear']:=EdtAddYear.Text;
ADOTable1['Mileage']:=EdtAddMleage.Text;
ADOTable1['Colour']:=EdtColor.Text;
ADOTable1['Price']:=EdtPrice.Text;
if EdtAddModel.Text='' then
begin
ShowMessage('Invalid data');
EdtAddModel.SetFocus;
end;
if EdtAddYear.Text='' then
begin
ShowMessage('Invalid data');
EdtAddYear.SetFocus;
end;
if EdtAddMleage.Text='' then
begin
ShowMessage('Invalid data');
EdtAddMleage.SetFocus;
end;
if EdtPrice.Text='' then
begin
ShowMessage('Invalid data');
EdtPrice.SetFocus;
end;
if EdtColor.Text='' then
begin
ShowMessage('Invalid data');
EdtColor.SetFocus;
end;
if CmbAddCompany.ItemIndex=0 then
begin
ADOTable1['Company']:='Nissan';
end
else if CmbAddCompany.ItemIndex=1 then
begin
ADOTable1['Company']:='Toyota';
end
else if CmbAddCompany.ItemIndex=1 then
begin
ADOTable1['Company']:='Nissan';
end;
if CmbAddTrans.ItemIndex=0 then
begin
ADOTable1['Transmisson']:='Manual';
end
else
if CmbAddTrans.ItemIndex=1 then
begin
ADOTable1['Transmisson']:='Auto';
end;
ADOTable1.Post;
ShowMessage('NEW ITEM HAS SUCCESSFULLY BEEN ADDED');
end;

end;
procedure TForm1.BtnCheckPrizeClick(Sender: TObject);
var
  carwash:string;
  alignment:string;
  service:string;
  i:integer;
  begin
arrPrize[1]:='Free Car Wash';
arrPrize[2]:='Free Wheel Alignment';
arrPrize[3]:='Free Service';
arrPrize[4]:='Free 1 mount Insurance';
arrPrize[5]:='No Prize';
randomcode:=Random(5)+1;
if randomcode=0 then
begin
ShowMessage('Well done. You have quilified for a free car wash');
RedtDraw.Lines.Add('You have qualified for :');
RedtDraw.Lines.Add('Car Wash');
sPrize:='free car wash';
end
else if randomcode=1 then
begin
ShowMessage('Well done. You have quilified for a free wheel alignment');
RedtDraw.Lines.Add('You have qualified for :');
RedtDraw.Lines.Add('Wheel Alignment');
sPrize:='Wheel Alignment';
end
else if randomcode=2 then
begin
ShowMessage('Well done. You have quilified for a free service');
RedtDraw.Lines.Add('You have qualified for :');
RedtDraw.Lines.Add('Service');
sPrize:='free service';
end
else if randomcode=3 then
begin
ShowMessage('Well done. You have quilified for a 1 month free insurance');
RedtDraw.Lines.Add('You have qualified for :');
RedtDraw.Lines.Add('1 month free insurance');
sPrize:='1 month free insurance';
end
else if randomcode=4 then
begin
ShowMessage('Sorry. You have not quilified for a prize');
RedtDraw.Lines.Add('No prize');
sPrize:='No prize';
end;
with unit2.DataModule2 do
begin
ADOTable2.Last;
ADOTable1.edit;
ADOTable2.Insert;
ADOTable2['CustName']:=LogName;
ADOTable2['CustSurname']:=LogSurname;
ADOTable2['Email']:=Email;
ADOTable2['Price']:=price;
ADOTable2['Company']:=company;
ADOTable2['Model']:=model;
ADOTable2['Prize']:=sPrize;
ADOTable2.Post;
end;
TabSheet5.Show;
PnlDraw1.Show;
PnlInfom.hide;
BtnCheckPrize.Enabled:=False;

end;
procedure TForm1.FormCreate(Sender: TObject);
begin
TabSheet1.Show;
RedtPreview.Lines.Clear;
RedtDraw.Clear;
TabSheet3.Hide;
PnlAdminInfo.show;
PnlDraw1.Show;
PnlSearch.Show;
RedtAdminInfo.Clear;
EdtAddMleage.Clear;
EdtAddModel.Clear;
EdtAddYear.Clear;
EdtColor.Clear;
EdtPrice.Clear;
EdtName.Clear;
EdtSrname.Clear;
EdtEmail.Clear;
BtnOrder.Enabled:=false;
ButLogin.Enabled:=false;

end;
end.

