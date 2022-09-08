object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 462
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 472
    Top = 48
    Width = 34
    Height = 13
    Caption = 'PRECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 91
    Width = 22
    Height = 13
    Caption = 'NCM'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 160
    Top = 94
    Width = 52
    Height = 13
    Caption = 'ALIQUOTA'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 300
    Top = 94
    Width = 12
    Height = 13
    Caption = 'ST'
    FocusControl = DBEdit6
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 303
    Width = 619
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 387
    Top = 429
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 134
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 64
    Width = 450
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 472
    Top = 64
    Width = 134
    Height = 21
    DataField = 'PRECO'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 110
    Width = 134
    Height = 21
    DataField = 'NCM'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 160
    Top = 110
    Width = 134
    Height = 21
    DataField = 'ALIQUOTA'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 300
    Top = 110
    Width = 61
    Height = 21
    DataField = 'ST'
    DataSource = DataSource1
    TabOrder = 7
  end
  object ProdutoTable: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 551
    Top = 198
    object ProdutoTableGUUID: TIntegerField
      FieldName = 'GUUID'
      Origin = 'GUUID'
    end
    object ProdutoTableCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object ProdutoTableDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object ProdutoTablePRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'PRECO'
    end
    object ProdutoTableNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
    object ProdutoTableALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = 'ALIQUOTA'
    end
    object ProdutoTableST: TIntegerField
      FieldName = 'ST'
      Origin = 'ST'
    end
  end
  object DataSource1: TDataSource
    DataSet = ProdutoTable
    Left = 548
    Top = 248
  end
end
