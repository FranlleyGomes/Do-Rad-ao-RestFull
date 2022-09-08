object DataModule3: TDataModule3
  OldCreateOrder = False
  Height = 263
  Width = 394
  object Produto: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 170
    Top = 78
    object ProdutoGUUID: TIntegerField
      FieldName = 'GUUID'
      Origin = 'GUUID'
    end
    object ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object ProdutoPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'PRECO'
    end
    object ProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
    object ProdutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = 'ALIQUOTA'
    end
    object ProdutoST: TIntegerField
      FieldName = 'ST'
      Origin = 'ST'
    end
  end
end
