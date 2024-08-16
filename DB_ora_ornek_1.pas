unit DB_ora_ornek_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Ora, OraSmart,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, OraCall,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    pgListe: TTabSheet;
    pgDetay: TTabSheet;
    DBGrid1: TDBGrid;
    dHastane: TDataSource;
    qHastane: TOraQuery;
    dbGlobal: TOraSession;
    qHastaneHASTA_ID_NUMBER: TFloatField;
    qHastaneHASTA_NAME: TStringField;
    qHastaneHASTA_FULLNAME: TStringField;
    qHastaneHASTA_DATE: TDateTimeField;
    qHastaneHASTA_CINSIYET: TStringField;
    qHastaneHASTA_TELEFON_NUMARASI: TStringField;
    qHastaneHASTA_KAN_GRUBU: TStringField;
    qHastaneHASTA_EMAIL: TStringField;
    qHastaneHASTA_ADRES: TStringField;
    qHastaneHASTA_SIKAYET: TStringField;
    qHastaneHASTA_TC: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Hasta_Adres: TLabel;
    Hasta_Email: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button1: TButton;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    pmEkle: TMenuItem;
    pmKaydet: TMenuItem;
    qTmp: TOraQuery;
    qTmpID: TFloatField;
    pmSil: TMenuItem;
    pmDegistir: TMenuItem;
    procedure FormCreate(Sender: TObject);
    PROCEDURE QUERYOPEN;
    procedure Button1Click(Sender: TObject);
    procedure pmEkleClick(Sender: TObject);
    procedure pmKaydetClick(Sender: TObject);
    procedure qHastaneAfterPost(DataSet: TDataSet);
    procedure qHastaneBeforePost(DataSet: TDataSet);
    procedure pmSilClick(Sender: TObject);
    procedure pmDegistirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  QUERYOPEN;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  QUERYOPEN;
end;

procedure TForm1.pmDegistirClick(Sender: TObject);
begin
    pageControl1.ActivePage := pgDetay;
    qHastane.Edit;
end;

procedure TForm1.pmEkleClick(Sender: TObject);
begin
    pageControl1.ActivePage := pgDetay;
    qhastane.Insert;
end;

procedure TForm1.pmKaydetClick(Sender: TObject);
begin
    qHastane.Post;
end;

procedure TForm1.pmSilClick(Sender: TObject);
begin
    qHastane.Delete;
end;

procedure TForm1.qHastaneAfterPost(DataSet: TDataSet);
begin
    if not dbglobal.InTransaction  then  dbglobal.StartTransaction;
      try
         dbglobal.Commit;
      Except
         dbglobal.Rollback;
         qhastane.CancelUpdates;
         application.MessageBox('Kayýt esnasýnda hata alýndý','HATA',mb_Ok)
      end;
end;

procedure TForm1.qHastaneBeforePost(DataSet: TDataSet);
begin
    if qhastane.State = dsInsert then
      Begin
        if qtmp.Active  then qTmp.Close;
        qTmp.Open;
        qHastaneHASTA_ID_NUMBER.AsString := qTmpID.AsString;
      End;
end;

procedure TForm1.QUERYOPEN;
begin
  if qhastane.Active then qhastane.Close;

  QHASTANE.SQL.Clear;
  qhastane.SQL.Add('Select * from HASTA ');
  if ComboBox1.Text <> '' then
    Begin
      case ComboBox1.ItemIndex of
         0: begin
            qhastane.SQL.Add('WHERE HASTA_FULLNAME LIKE ''%'+Edit1.Text+'%'' ');
         end;
         1: begin
            qhastane.SQL.Add('WHERE HASTA_ADRES LIKE ''%'+Edit1.Text+'%'' ');
         end;
         2:  begin
             qhastane.SQL.Add('WHERE HASTA_EMAIL LIKE ''%'+Edit1.Text+'%'' ');
         end;
      end;

    End;

  qHastane.Open;


end;

end.
