object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 554
  ClientWidth = 870
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 870
    Height = 554
    ActivePage = pgListe
    Align = alClient
    TabOrder = 0
    object pgListe: TTabSheet
      Caption = 'pgListe'
      object DBGrid1: TDBGrid
        Left = 3
        Top = 40
        Width = 856
        Height = 243
        DataSource = dHastane
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'HASTA_FULLNAME'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_CINSIYET'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_ADRES'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_EMAIL'
            Width = 520
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_ID_NUMBER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_NAME'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_FULLNAME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_DATE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_CINSIYET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_TELEFON_NUMARASI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_KAN_GRUBU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_EMAIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_ADRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_SIKAYET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HASTA_TC'
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 400
        Top = 325
        Width = 81
        Height = 21
        Caption = 'ARA'
        TabOrder = 1
        OnClick = Button1Click
      end
      object ComboBox1: TComboBox
        Left = 42
        Top = 325
        Width = 145
        Height = 21
        TabOrder = 2
        Text = 'ComboBox1'
        Items.Strings = (
          #304'S'#304'M'
          'ADRES'
          'EMAIL')
      end
      object Edit1: TEdit
        Left = 224
        Top = 325
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'Edit1'
      end
    end
    object pgDetay: TTabSheet
      Caption = 'pgDetay'
      ImageIndex = 1
      object Label1: TLabel
        Left = 560
        Top = 120
        Width = 50
        Height = 13
        Caption = 'Hasta '#304'smi'
      end
      object Label2: TLabel
        Left = 538
        Top = 152
        Width = 72
        Height = 13
        Caption = 'Hasta_Cinsiyet'
      end
      object Hasta_Adres: TLabel
        Left = 548
        Top = 189
        Width = 62
        Height = 13
        Caption = 'Hasta_Adres'
      end
      object Hasta_Email: TLabel
        Left = 552
        Top = 229
        Width = 58
        Height = 13
        Caption = 'Hasta_Email'
      end
      object DBEdit1: TDBEdit
        Left = 664
        Top = 117
        Width = 121
        Height = 21
        DataField = 'HASTA_FULLNAME'
        DataSource = dHastane
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 664
        Top = 149
        Width = 121
        Height = 21
        DataField = 'HASTA_CINSIYET'
        DataSource = dHastane
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 664
        Top = 181
        Width = 121
        Height = 21
        DataField = 'HASTA_ADRES'
        DataSource = dHastane
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 664
        Top = 221
        Width = 121
        Height = 21
        DataField = 'HASTA_EMAIL'
        DataSource = dHastane
        TabOrder = 3
      end
      object DBGrid2: TDBGrid
        Left = 40
        Top = 320
        Width = 793
        Height = 185
        DataSource = dHastane
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 40
        Top = 289
        Width = 240
        Height = 25
        DataSource = dHastane
        TabOrder = 5
      end
    end
  end
  object dHastane: TDataSource
    DataSet = qHastane
    Left = 212
    Top = 96
  end
  object qHastane: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO HASTA'
      
        '  (HASTA_ID_NUMBER, HASTA_NAME, HASTA_FULLNAME, HASTA_DATE, HAST' +
        'A_CINSIYET, HASTA_TELEFON_NUMARASI, HASTA_KAN_GRUBU, HASTA_EMAIL' +
        ', HASTA_ADRES, HASTA_SIKAYET, HASTA_TC)'
      'VALUES'
      
        '  (:HASTA_ID_NUMBER, :HASTA_NAME, :HASTA_FULLNAME, :HASTA_DATE, ' +
        ':HASTA_CINSIYET, :HASTA_TELEFON_NUMARASI, :HASTA_KAN_GRUBU, :HAS' +
        'TA_EMAIL, :HASTA_ADRES, :HASTA_SIKAYET, :HASTA_TC)')
    SQLDelete.Strings = (
      'DELETE FROM HASTA'
      'WHERE'
      '  HASTA_ID_NUMBER = :Old_HASTA_ID_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HASTA'
      'SET'
      
        '  HASTA_ID_NUMBER = :HASTA_ID_NUMBER, HASTA_NAME = :HASTA_NAME, ' +
        'HASTA_FULLNAME = :HASTA_FULLNAME, HASTA_DATE = :HASTA_DATE, HAST' +
        'A_CINSIYET = :HASTA_CINSIYET, HASTA_TELEFON_NUMARASI = :HASTA_TE' +
        'LEFON_NUMARASI, HASTA_KAN_GRUBU = :HASTA_KAN_GRUBU, HASTA_EMAIL ' +
        '= :HASTA_EMAIL, HASTA_ADRES = :HASTA_ADRES, HASTA_SIKAYET = :HAS' +
        'TA_SIKAYET, HASTA_TC = :HASTA_TC'
      'WHERE'
      '  HASTA_ID_NUMBER = :Old_HASTA_ID_NUMBER')
    SQLLock.Strings = (
      
        'SELECT HASTA_ID_NUMBER, HASTA_NAME, HASTA_FULLNAME, HASTA_DATE, ' +
        'HASTA_CINSIYET, HASTA_TELEFON_NUMARASI, HASTA_KAN_GRUBU, HASTA_E' +
        'MAIL, HASTA_ADRES, HASTA_SIKAYET, HASTA_TC FROM HASTA'
      'WHERE'
      '  HASTA_ID_NUMBER = :Old_HASTA_ID_NUMBER'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT HASTA_ID_NUMBER, HASTA_NAME, HASTA_FULLNAME, HASTA_DATE, ' +
        'HASTA_CINSIYET, HASTA_TELEFON_NUMARASI, HASTA_KAN_GRUBU, HASTA_E' +
        'MAIL, HASTA_ADRES, HASTA_SIKAYET, HASTA_TC FROM HASTA'
      'WHERE'
      '  HASTA_ID_NUMBER = :HASTA_ID_NUMBER')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM HASTA'
      ''
      ')')
    Session = dbGlobal
    SQL.Strings = (
      'SELECT * FROM HASTA')
    Active = True
    BeforePost = qHastaneBeforePost
    AfterPost = qHastaneAfterPost
    Left = 156
    Top = 104
    object qHastaneHASTA_ID_NUMBER: TFloatField
      DisplayWidth = 20
      FieldName = 'HASTA_ID_NUMBER'
      Required = True
    end
    object qHastaneHASTA_NAME: TStringField
      DisplayWidth = 19
      FieldName = 'HASTA_NAME'
      Size = 200
    end
    object qHastaneHASTA_FULLNAME: TStringField
      DisplayWidth = 20
      FieldName = 'HASTA_FULLNAME'
      Size = 200
    end
    object qHastaneHASTA_DATE: TDateTimeField
      DisplayWidth = 16
      FieldName = 'HASTA_DATE'
    end
    object qHastaneHASTA_CINSIYET: TStringField
      DisplayWidth = 17
      FieldName = 'HASTA_CINSIYET'
      Size = 4
    end
    object qHastaneHASTA_TELEFON_NUMARASI: TStringField
      DisplayWidth = 30
      FieldName = 'HASTA_TELEFON_NUMARASI'
      Size = 60
    end
    object qHastaneHASTA_KAN_GRUBU: TStringField
      DisplayWidth = 24
      FieldName = 'HASTA_KAN_GRUBU'
      Size = 12
    end
    object qHastaneHASTA_EMAIL: TStringField
      DisplayWidth = 288
      FieldName = 'HASTA_EMAIL'
      Size = 200
    end
    object qHastaneHASTA_ADRES: TStringField
      DisplayWidth = 288
      FieldName = 'HASTA_ADRES'
      Size = 200
    end
    object qHastaneHASTA_SIKAYET: TStringField
      DisplayWidth = 288
      FieldName = 'HASTA_SIKAYET'
      Size = 200
    end
    object qHastaneHASTA_TC: TFloatField
      DisplayWidth = 15
      FieldName = 'HASTA_TC'
    end
  end
  object dbGlobal: TOraSession
    Username = 'SYSTEM'
    Server = 'XE'
    Connected = True
    Left = 108
    Top = 112
    EncryptedPassword = 'B2FFBEFFB1FFBEFFB8FFBAFFADFF'
  end
  object PopupMenu1: TPopupMenu
    Left = 708
    Top = 160
    object pmEkle: TMenuItem
      Caption = 'Ekle'
      OnClick = pmEkleClick
    end
    object pmKaydet: TMenuItem
      Caption = 'Kaydet'
      OnClick = pmKaydetClick
    end
    object pmSil: TMenuItem
      Caption = 'Sil'
      OnClick = pmSilClick
    end
    object pmDegistir: TMenuItem
      Caption = 'De'#287'i'#351'tir'
      OnClick = pmDegistirClick
    end
  end
  object qTmp: TOraQuery
    Session = dbGlobal
    SQL.Strings = (
      'SELECT (sq_HASTA.NEXTVAL) ID FROM DUAL')
    Left = 572
    Top = 48
    object qTmpID: TFloatField
      FieldName = 'ID'
    end
  end
end
