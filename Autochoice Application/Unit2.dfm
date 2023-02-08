object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 265
  Width = 426
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Vahed\OneDrive\Desktop\ITPAT 2020\Cars.mdb;Mode=ReadWrite;Pe' +
      'rsist Security Info=False;Jet OLEDB:System database="";Jet OLEDB' +
      ':Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engin' +
      'e Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Part' +
      'ial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:Ne' +
      'w Database Password="";Jet OLEDB:Create System Database=False;Je' +
      't OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Co' +
      'mpact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet O' +
      'LEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 72
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Cars'
    Left = 184
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 304
    Top = 72
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Vahed\OneD' +
      'rive\Desktop\ITPAT 2020\Cars.mdb;Mode=ReadWrite;Persist Security' +
      ' Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 176
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = 'Customer'
    Left = 184
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 304
    Top = 168
  end
end
