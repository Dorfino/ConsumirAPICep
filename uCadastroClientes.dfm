object frmCadastroClientes: TfrmCadastroClientes
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro de clientes'
  ClientHeight = 406
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lCaptionForm: TLabel
    Tag = 9999
    Left = 0
    Top = 0
    Width = 603
    Height = 32
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = ' Cadastro de clientes'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnHighlight
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    OnMouseDown = lCaptionFormMouseDown
  end
  object lFechar: TLabel
    Tag = 9999
    Left = 579
    Top = -4
    Width = 20
    Height = 35
    Cursor = crHandPoint
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnHighlight
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = lFecharClick
  end
  object pPrincipal: TPanel
    Left = 0
    Top = 32
    Width = 603
    Height = 374
    Align = alBottom
    BorderStyle = bsSingle
    Caption = #39#39#39#39
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object lBairro: TLabel
      Left = 54
      Top = 219
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bairro'
      FocusControl = eBairro
    end
    object lCep: TLabel
      Left = 63
      Top = 121
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'CEP'
      FocusControl = ecep
    end
    object lCidade: TLabel
      Left = 49
      Top = 244
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cidade'
      FocusControl = eCidade
    end
    object lComplemento: TLabel
      Left = 194
      Top = 194
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Complemento'
      FocusControl = eComplemento
    end
    object lCpf: TLabel
      Left = 321
      Top = 44
      Width = 114
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CPF'
      FocusControl = eCPF
    end
    object lEmail: TLabel
      Left = 54
      Top = 69
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'E-mail'
      FocusControl = eEmail
    end
    object lEstado: TLabel
      Left = 49
      Top = 269
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estado'
      FocusControl = eEstado
    end
    object lIdentidade: TLabel
      Left = 30
      Top = 44
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Identidade'
      FocusControl = eIdentidade
    end
    object lLogradouro: TLabel
      Left = 27
      Top = 169
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Logradouro'
      FocusControl = eLogradouro
    end
    object lNome: TLabel
      Left = 55
      Top = 19
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome'
      FocusControl = eNome
    end
    object lNumero: TLabel
      Left = 45
      Top = 194
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#250'mero'
      FocusControl = eNumero
    end
    object lPais: TLabel
      Left = 399
      Top = 269
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pa'#237's'
      FocusControl = ePais
    end
    object lTelefone: TLabel
      Left = 40
      Top = 94
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Telefone'
      FocusControl = eTelefone
    end
    object nGerarXmlCadastro: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 328
      Width = 591
      Height = 38
      Hint = 'Gerar xml e enviar por email'
      Align = alBottom
      Caption = 'Gerar xml do cadastro'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000000000000000000
        0000000000000000000000000001000000020000000400000004000000040000
        0005000000050000000500000005000000050000000500000005000000050000
        0005000000050000000500000005000000050000000500000005000000050000
        0005000000050000000500000005000000040000000200000001000000000000
        0000000000000000000100000003000000080000000D00000010000000110000
        0011000000110000001100000012000000120000001200000012000000120000
        0012000000120000001300000013000000130000001300000013000000130000
        00130000001300000013000000130000000F00000009000000031A131127402E
        2960694D449F8E675BD800000007312F69A28F7079EDB18574FFA96F4BFFA768
        3DFFA86A42FFAE806DFFAA8179FF4B49ADFF2C37BDFF373DB5FF9B777FFFAF82
        70FFA86D49FFA5653CFFA66840FFAD7D6AFFA87D75FF4846AAFF2933BBFF363A
        B3FF9A747DFFAD7F6EFFA66B47FF8A4926FF593423A300000009000000000000
        000000000000000000030000000C303CC1FF424AC3FFDCDAEDFFF7F0ECFFBC8B
        6AFFA7693FFFB07750FFEEE0D8FFF1EDF1FF5E65CBFF2D39BEFF404AC3FFDBD8
        EAFFF5EEEAFFBB8868FFA6673DFFAE744EFFECDED5FFEFEBEFFF5B62C8FF2A35
        BCFF3D47C0FFD8D6E7FFF5ECE7FFA26C50FF8C4B28FF0000000E1A1411274030
        2A606B4F469F906B5DD80000000E4F4EAFFF323FC3FFF7EFEAFFF6EFEAFFF6EF
        EAFFF7EFEAFFF6EFEAFFF6EEE9FFF6EEEAFFF7EEE9FFF6EFE9FFF6EEE9FFF6EE
        E9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EDE8FFF6EEE8FFF6EEE8FFF6EDE8FFF5ED
        E8FFF6EDE8FFF6EEE7FFF6EDE7FFF4EBE7FF9F6952FF00000011000000000000
        000000000000000000030000000EA87E76FF646DD0FFF7F0ECFFF7F0EBFFF7F0
        EBFFF7EFEAFFF7F0EBFFF7EFEAFFF7EFEBFFF7EFEBFFF7EFEAFFF7EFEAFFF7EF
        EAFFF7EFE9FFF6EFE9FFF7EFE9FFF7EFE9FFF6EFE9FFF7EFE9FFF7EEE9FFF7EE
        E8FFF6EEE9FFF6EEE8FFF6EEE8FFD8D5E6FFA97B6BFF000000111B1412274231
        2B606C50489F936D61D80000000DB0816EFFF3F1F6FFF7F0ECFFF8F0ECFFFAF4
        F0FFFAF4F1FFF9F4F0FFFAF4F0FFF9F4F0FFF9F3F0FFF9F4F0FFF9F3F0FFF9F3
        F0FFF9F4EFFFF9F3F0FFF7EFEAFFF7EFEAFFF7EFEAFFF7EFEAFFF6EFEAFFF7EF
        E9FFF7EEE9FFF7EEE9FFF6EFE9FF353CB3FF957077FF00000010000000000000
        000000000000000000030000000CB0774FFFF1E6DEFFF8F1EDFFF8F1EDFFC59E
        8DFFC59E8CFFC49E8CFFC49D8CFFC59D8BFFC49D8CFFC49D8BFFC49D8BFFC49C
        8BFFC49C8AFFC49B8BFFF7EFEBFFF7F0EBFFF7F0EAFFF7F0EBFFF7F0EBFFF7EF
        EAFFF7EFEAFFF6EFEAFFF6EFEAFF222BB0FF2F33AAFF0000000F1B1412274232
        2C606D524A9F947063D80000000BB1774EFFB7835EFFF9F2EEFFF8F2EEFFF4EA
        E4FFF3E9E4FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9
        E2FFF3E8E2FFF3E8E2FFF8F1ECFFF8F1ECFFF7F0ECFFF7F0ECFFF8F0EBFFF7F0
        EBFFF7F0ECFFF7F0EBFFF8EFEBFF575DC2FF242DB3FF0000000F000000000000
        000000000000000000030000000BB37F5BFFB27B51FFF8F3EFFFF9F2EFFFC6A0
        8FFFC69F8FFFC5A08FFFC69F8EFFC69F8DFFC59F8EFFC69F8DFFC59E8DFFC59E
        8CFFC59D8CFFC59E8CFFF8F1EDFFF8F2EDFFF8F1ECFFF7F1ECFFF7F0ECFFF8F1
        ECFFF8F0ECFFF7F0ECFFF8F0ECFFF2EFF2FF7C648BFF0000000E1B1513274334
        2E6070554C9F977366D80000000AB88D7EFFC59B7BFFF9F3F0FFF9F3F0FFF4EB
        E5FFF4EBE6FFF4EAE5FFF4EBE5FFF4EBE5FFF4EBE5FFF4EAE5FFF4EAE5FFF4EA
        E4FFF3EAE4FFF3EAE4FFF9F2EEFFF8F1EDFFF9F2EEFFF8F1EDFFF8F1EEFFF8F1
        EEFFF8F1EDFFF8F1EDFFF8F1ECFFEEE1DAFFB18576FF0000000D000000000000
        0000000000000000000200000009A7878EFFFBF6F3FFFAF4F1FFFAF4F1FFC8A2
        91FFC7A291FFC7A190FFC7A291FFC6A190FFC7A190FFC6A18FFFC6A08FFFC6A0
        8FFFC6A08EFFC6A08EFFF8F2EFFFF8F2EFFFF9F2EFFFF8F2EFFFF8F2EEFFF8F2
        EEFFF9F2EEFFF8F2EDFFF9F2EEFFAA7450FFAF826FFF0000000C1C1613274535
        2F6071584E9F997769D800000009535ECBFFE2E4F6FFFAF5F2FFFAF4F2FFFAF5
        F2FFFAF5F1FFFAF4F1FFFAF4F1FFFAF4F1FFF9F4F1FFF9F4F1FFF9F4F1FFF9F4
        F0FFF9F4F0FFF9F4F0FFF9F3F0FFF9F3F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F2
        EFFFF9F3EFFFF8F3EFFFF9F2EFFFA56944FFA66D48FF0000000C000000000000
        00000000000000000002000000084B5DD5FF5B6BD8FFFAF6F3FFFBF5F3FFFAF5
        F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF4F2FFFAF5
        F1FFFAF4F2FFF9F5F1FFF9F4F1FFFAF4F1FFF9F4F0FFFCF9F8FFFCF9F8FFFCF9
        F7FFFCF9F7FFFCF9F7FFFCF9F7FFBA8E70FFA66D46FF0000000B1C1614274536
        3160735A509F9B7A6CD800000007686CC4FF4D5FD6FFFAF6F4FFFBF6F4FFFBF6
        F4FFFBF6F3FFFBF5F3FFFAF6F3FFFAF6F3FFFAF6F3FFFBF5F2FFFAF5F2FFFAF5
        F3FFFAF5F2FFFAF5F2FFFAF5F2FFFAF4F1FFFAF4F2FFFCFAF8FF646CDAFF6269
        DAFF6067D8FF5E65D7FFFCF9F8FFF9F5F2FFB2846BFF0000000A000000000000
        0000000000000000000200000007BC9991FF7887E0FFFCF7F4FFFBF7F4FFFBF7
        F4FFFAF6F4FFFBF7F4FFFBF6F4FFFBF7F4FFFAF6F4FFFBF6F3FFFBF6F3FFFBF5
        F4FFFBF6F3FFFAF5F3FFFAF6F3FFFBF5F3FFFAF5F3FFFCFAF9FF6C74DDFF6972
        DDFF6770DCFF656EDBFFFCFAF8FFDFDFF2FFBA9284FF0000000A1D1714274638
        3260755C539F9E7D70D800000006C29C8BFFF6F7FCFFFCF7F6FFFBF7F5FFFBF7
        F6FFFBF7F5FFFCF7F5FFFBF7F5FFFBF6F5FFFBF7F5FFFBF6F4FFFBF6F5FFFBF6
        F4FFFBF6F4FFFBF6F3FFFAF6F4FFFBF6F4FFFAF6F4FFFDFAF9FF727DE1FF707B
        DFFF6F78DFFF6D76DEFFFDFAF9FF4D5DCEFFA88A90FF00000009000000000000
        0000000000000000000100000005C1936EFFF6EDE7FFFCF8F6FFFBF8F6FFFCF8
        F7FFFCF8F6FFFBF8F6FFFCF7F6FFFBF8F6FFFBF7F6FFFCF8F5FFFCF7F6FFFBF7
        F6FFFBF7F5FFFBF6F5FFFBF6F5FFFBF7F5FFFBF6F5FFFDFAF9FF7986E3FF7784
        E3FF7581E2FF747EE1FFFCFAF9FF4050CCFF4B56C6FF000000081D1715274739
        3360765E549FA07F72D800000005C3956CFFC89F7AFFFCF9F8FFFCF8F8FFFCF9
        F7FFFCF8F7FFFCF8F7FFFBF8F6FFFCF8F6FFFCF8F6FFFCF8F6FFFCF8F6FFFBF7
        F6FFFBF7F6FFFCF8F6FFFCF7F6FFFBF7F5FFFBF7F5FFFDFBFAFF7F8DE6FF7D8B
        E5FF7B89E5FF7A87E4FFFDFAF9FF6E7ADAFF4153CFFF00000007000000000000
        0000000000000000000100000003C09776FAC49870FFFFFFFEFFFFFFFEFFFFFE
        FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
        FEFFFFFEFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFE8E0E2FF84759BF1000000051D181527483A
        3460775F569FA28274D8000000023B312D4BBF9875F3D0B2A6FFD1B1A6FFD0B1
        A5FFD0B1A4FFCFAFA3FFCFAEA2FFCEAEA2FFCEADA1FFCEACA0FFCDACA0FFCDAB
        9EFFCBAB9DFFCBAA9DFFCBA99CFFCAA89BFFC9A89AFFC9A699FFC8A598FFC8A5
        97FFC7A496FFC7A396FFC6A395FFA08171D33128244400000003000000000000
        0000000000000000000000000001000000010000000300000003000000040000
        0004000000040000000400000004000000040000000400000004000000040000
        0004000000040000000500000005000000050000000500000005000000050000
        0005000000050000000500000005000000040000000200000001000000000000
        0000000000000000000000000000000000000000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = nGerarXmlCadastroClick
      ExplicitLeft = 168
      ExplicitTop = 360
      ExplicitWidth = 91
    end
    object eBairro: TEdit
      Left = 88
      Top = 216
      Width = 473
      Height = 21
      TabOrder = 9
      Text = 'centro'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object ecep: TMaskEdit
      Left = 88
      Top = 118
      Width = 73
      Height = 21
      Alignment = taCenter
      EditMask = '99.999-999;0;_'
      MaxLength = 10
      TabOrder = 5
      Text = ''
      OnEnter = DoEntrar
      OnExit = eCepExit
    end
    object eCidade: TEdit
      Left = 88
      Top = 241
      Width = 473
      Height = 21
      TabOrder = 10
      Text = 'anapolis'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eComplemento: TEdit
      Tag = 9999
      Left = 264
      Top = 191
      Width = 297
      Height = 21
      TabOrder = 8
      Text = 'quadra'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eCPF: TEdit
      Left = 440
      Top = 41
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '12345678901'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eEmail: TEdit
      Left = 88
      Top = 66
      Width = 473
      Height = 21
      CharCase = ecLowerCase
      TabOrder = 3
      Text = 'info@startcorp.com.br'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eEstado: TEdit
      Left = 88
      Top = 266
      Width = 121
      Height = 21
      TabOrder = 11
      Text = 'GO'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eIdentidade: TEdit
      Left = 88
      Top = 41
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '12354789'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eLogradouro: TEdit
      Left = 88
      Top = 166
      Width = 473
      Height = 21
      TabOrder = 6
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eNome: TEdit
      Left = 88
      Top = 16
      Width = 473
      Height = 21
      Color = clWhite
      MaxLength = 60
      TabOrder = 0
      Text = 'Dorfino'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eNumero: TEdit
      Left = 88
      Top = 191
      Width = 89
      Height = 21
      TabOrder = 7
      Text = '0'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object ePais: TEdit
      Left = 424
      Top = 266
      Width = 137
      Height = 21
      TabOrder = 12
      Text = 'Brasil'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
    object eTelefone: TEdit
      Left = 88
      Top = 91
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '62-9.8119-8844'
      OnEnter = DoEntrar
      OnExit = DoSair
    end
  end
  object pEmail: TPanel
    Left = 553
    Top = 42
    Width = 346
    Height = 322
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    Visible = False
    OnMouseDown = pEmailMouseDown
    DesignSize = (
      346
      322)
    object lCaptionEamil: TLabel
      Left = 1
      Top = 1
      Width = 344
      Height = 24
      Align = alTop
      Alignment = taCenter
      Caption = 'Dados do email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnMouseDown = pEmailMouseDown
      ExplicitLeft = 32
      ExplicitTop = 8
      ExplicitWidth = 156
    end
    object lFechaEmail: TLabel
      AlignWithMargins = True
      Left = 325
      Top = 2
      Width = 14
      Height = 24
      Alignment = taCenter
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = lFechaEmailClick
    end
    object pBodyEmail: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 28
      Width = 339
      Height = 290
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitHeight = 175
      object lEmailOrigem: TLabel
        Left = 4
        Top = 60
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'Email de origem'
      end
      object lHost: TLabel
        Left = 58
        Top = 11
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = 'Host'
        FocusControl = eEmailOrigem
      end
      object lPorta: TLabel
        Left = 54
        Top = 35
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Porta'
      end
      object lEmailDestino: TLabel
        Left = 3
        Top = 87
        Width = 77
        Height = 13
        Alignment = taRightJustify
        Caption = 'Email de destino'
        FocusControl = eEmailDestino
      end
      object lAssunto: TLabel
        Left = 41
        Top = 112
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Assunto'
        FocusControl = eAssunto
      end
      object lMensagemEmail: TLabel
        Left = 3
        Top = 165
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mensagem'
        FocusControl = eAssunto
      end
      object lArquivoAnexo: TLabel
        Left = 12
        Top = 136
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Anexo'
      end
      object bEnviar: TSpeedButton
        Left = 104
        Top = 255
        Width = 126
        Height = 32
        Caption = 'Enviar'
        OnClick = bEnviarClick
      end
      object eEmailOrigem: TEdit
        Tag = 9999
        Left = 84
        Top = 57
        Width = 245
        Height = 21
        CharCase = ecLowerCase
        Enabled = False
        TabOrder = 2
      end
      object eHost: TEdit
        Tag = 9999
        Left = 84
        Top = 8
        Width = 245
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 0
        Text = 'startcorp.com.br'
      end
      object ePorta: TEdit
        Tag = 9999
        Left = 84
        Top = 32
        Width = 69
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 1
        Text = '587'
      end
      object eEmailDestino: TEdit
        Tag = 9999
        Left = 84
        Top = 84
        Width = 245
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 3
      end
      object eAssunto: TEdit
        Tag = 9999
        Left = 84
        Top = 109
        Width = 245
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 4
        Text = 'xml do cadastro do cliente'
      end
      object eMensagem: TMemo
        Tag = 9999
        Left = 58
        Top = 166
        Width = 271
        Height = 85
        Lines.Strings = (
          'Em anexo o xml do cadastro do cliente, ora soicitado.'
          ''
          'Grato.'
          ''
          'Dpto de Cadastro')
        TabOrder = 5
      end
      object eAnexo: TMemo
        Left = 58
        Top = 132
        Width = 271
        Height = 30
        TabStop = False
        BorderStyle = bsNone
        Color = clMoneyGreen
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
    end
  end
end
