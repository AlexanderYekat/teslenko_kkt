unit hUsrAuth;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, System.Actions;

type
  ThfUsrAuth = class(TForm)
    ActionList1: TActionList;
    aBarCodeSend: TAction;
    procedure aBarCodeSendExecute(Sender: TObject);
  private
    { Private declarations }
  public
    sBarCode: string;
    { Public declarations }
  end;

var
  hfUsrAuth: ThfUsrAuth;

implementation

{$R *.DFM}

procedure ThfUsrAuth.aBarCodeSendExecute(Sender: TObject);
begin
// dummy
end;

end.
