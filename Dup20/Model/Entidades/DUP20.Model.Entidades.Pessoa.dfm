object ModelEntidadePessoa: TModelEntidadePessoa
  OldCreateOrder = False
  Height = 327
  Width = 585
  object Pessoa: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PESSOA')
    Left = 221
    Top = 152
    object PessoaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PessoaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
  end
end
