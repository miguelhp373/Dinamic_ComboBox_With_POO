object Fr_Initial: TFr_Initial
  Left = 455
  Top = 246
  Width = 395
  Height = 173
  Caption = 'Class Return List For ComboBox'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 118
    Height = 14
    Caption = 'Selecione um Estado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object optionSelected: TLabel
    Left = 48
    Top = 85
    Width = 273
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = 'optionSelected'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cb_stateSelection: TComboBox
    Left = 179
    Top = 30
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = cb_stateSelectionChange
  end
end
