unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB, FMTBcd, SqlExpr;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOConnection2: TADOConnection;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
