unit sMF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, IniFiles,
  StdCtrls, Mask, ActnList, System.Actions;

type
  TiModeFlag = (imfBarCode, imfArticul, imfItemId);

  TdsItemBuf = class(TComponent)
  public
    Active: Bool;
  end;

type
  TsfMF = class(TForm)
    ActionList1: TActionList;
    aSetDiscount: TAction;
    procedure aSetDiscountExecute(Sender: TObject);
  private
    { Private declarations }
  public
    ifMain: TIniFile;
    sDCNumber: string;
    sC1Data: string;
    sData: string;
    dsItemBuf: TdsItemBuf;
    imfBarCode: string;
    iItemMethodSelect: Integer;
    procedure udpFillDocument(i: Bool);
    procedure udpFillBuffer(i: TiModeFlag);
    procedure AddSingleResultEvent(iId, iMsgCode: Integer; sMessage, sDescription: string );
    procedure aCancelDocumentExecute(Sender: TObject);
    { Public declarations }
  end;

var
  sfMF: TsfMF;

implementation

uses Properties, AlertMSG;

{$R *.DFM}

procedure TsfMF.aSetDiscountExecute(Sender: TObject);
begin
// dummy
end;

procedure TsfMF.udpFillDocument(i: Bool);
begin
// dummy
end;

procedure TsfMF.udpFillBuffer(i: TiModeFlag);
begin
// dummy
end;

procedure TsfMF.AddSingleResultEvent(iId, iMsgCode: Integer; sMessage, sDescription: string );
begin
  fAlertMSG.Text.Caption := sMessage;
  fAlertMSG.FormStyle := fsStayOnTop;
  fAlertMSG.ShowModal;
end;

procedure TsfMF.aCancelDocumentExecute(Sender: TObject);
begin
// dummy
end;

end.
