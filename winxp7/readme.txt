RemoteCashClient | CashSvr


RemoteCashClient: ActiveX ������, ������������ � ����� ����� ����������
�������������� �������� OLE, ��������� �������� ������ �� ��������
������ ��� ������ ����� ��������� ���������� �����������.

�����������:

CREATEOBJECT("RemoteCashClient.CRemoteCashClient")

������ ����� ���������������� 1 ���, ��� ������� �������� ���������,
���� �������������/�������� ����� ������������� ��� ������ ������� ����,
��� ����������� �������� ����� ����������.

��������:
  ��������� ����� ��������.

��� ������ � ������ �������� ����� ���� ���������

.AddLine(SenderId, CmdId, Depart, Text, Qty, Price, Tax1, TPayment, Font, matrix, optional excise)
          - ��������� � ����� ������� �� ����� �����������

.SendBuff - �������� ���� ��� �� ������ ������

----------------------------------

.TPayment (1..4) - ��� ������, ����������� � ��-54, 0 ��� 1 - ��������, 2 - �����������, 3 - �����, 4 - ��������
.Tax1 (0..6) - 0 - ��� ���, 1 - 18%, 2 - 10%, 3 - 20%, 4 - ��� ���, 5 - 10%, 6 - 118, 7 - 5%, 8 - 7%
.WaitNDoc (0,1) - �������� ������ ��������� ����� ������ ����
.TimeOut (�����, �.) - ������� �������� ����� �������. ��� �������� ������ ���������
                       ���������� �������� �������, ��� ��� ����� ������ �������
.LastNDoc (int) - ����� ��������� ������������ �������������
.matrix - ������ ��������� �� ������� �����
.excise - boolean �������� - true ��� ��������� ������ (�����, ��������), �� ��������� false
----------------------------------

  .OwnerWnd (HWND, Int, DWord) - Handle ���� �� �������� �������������� �����.
                                 ����� ������� 0, ����� ������������ ����� ����� 
                                 ��������� ������� ����.

  .SenderId (0..9) - ������������� ���������� ����� (� ��� ������, ���� �� ���� ����� 
                     ���������� ��������� � ���������� �������)

  .InternalMSGs (0,1) - ��������� ���������������� ��������� ��� ��������� � 0

  .KeepAlive (0,1) - �������� ������ ��������� (1 ��� � 60 ���.) � ��������� ������ 
                     ��� ��������� ����������

  .RemoteIP (string) - IP-����� ����������, �� ������� �������� �������� ������

  .RemotePort (Int, DWord) - TCP-���� ����������� �� �������� ������� (��-��������� 9514)
  
  .CmdId (0..255) - ������������� ������� ��� ������������.

         0 - ���������� ����� �������� � ������ ��������� �������.
             ��� ���� ��������� ��� ���������� (������������� �������� 255)
         1 - ������ ������, ������������� ���������� "Text","Font"
         2 - �������, ������������ "Text","Depart","Qty","Price"
         3 - �������, ������������ "Text","Depart","Qty","Price"
         4 - ������� ���, ������������ "Text", ��������� ����� ������ ����.
                          ����� ���� ������ ������.
         5 - �������� ���, ������ ������������ ���� � �������� ������������
             �� ����������� ����� �������������� ������� ��� ���������� ����
             ��� ���������� ������������ ��������, �������� ������� ����� ����� 
             �� �����.
         6 - ������� �������� ����
         7 - ������� ����������
         8 - ����� ����������
         15 - ������ QR-���� (����� ��� QR-���� ��������� ����� �������� Text ��� matrix)
       255 - ��������� ������ ���������, ���������� ������. ���� KeepAlive = 0,
             ��������� ���������� � ��������.
       1021 - ���������� ������� �������, ���� �� ��������� text

  .Font (0,1) - 0 ���������� �����, 1 ������ ������

  .Depart (0..16) - ����� ������

  .Text (string) - ����� ��� ������ �� ����� ��

  .Qty (double, currency, float, numeric) - ���������� ��� �������/��������

  .Price (double, currency, float, numeric) - ���� 

  .SendRes (0,1 ������ ������) - ��������� ��������� �������

�����:

  .SendCmd - ����� ������������ �������� ������� �� ������.


�������������������������������������������������������������������������������

CashServer.

��������� � Ini-�����:
[Local]
Port=9514     - TCP-����

[FRCash]
Type=Shtrih,Mercury,MStar,Felix,S500N(�����-500)      
              - ��� �������� ������  (���� ������ 2, ������ - ����)
Port=1        - ����� ����������������� �����
Baud=5        - �������� ����� (5=57600, 4=38400, 3=19200 � �.�.) 
Password=0000 - ������ ������������
AlertSnd=1    - ������ ������������� ��� ����������� � �������
                ���������� �����. (0=�� �������)
-----------
������ � ���� ������� ��� � �������, �������, ����� �������.

������ �������� ����:


//...������������� �������
MyCashObject = CREATEOBJECT('RemoteCashClient.CRemoteCashClient');

// ��������� ��������� ����������
MyCashObject.OwnerWnd = 0;
MyCashObject.SenderId = 1;
MyCashObject.RemoteIP = '192.168.0.55';
MyCashObject.RemotePort = 9514;
MyCashObject.KeepAlive = 1;


//				������ ���������

MyCashObject.CmdId = 0;
MyCashObject.Font = 0;
MyCashObject.SendCmd;

if MyCashObject.SendRes = 0 then
	ShowMessage('������ ��� ������� ������ �� ������');
	Return 0
End;

//				�������������� ��������� � ���������
MyCashObject.Text = '������������ ��������� �����';
MyCashObject.CmdId = 1;					// ������ ������
MyCashObject.SendCmd;
MyCashObject.Text = '��������:' + '�������������'
MyCashObject.CmdId = 1;					// ������ ������
MyCashObject.SendCmd;

//��������� ����� ������� ����� �������� ����
MyCashObject.Text = '��� �������';
MyCashObject.CmdId = 1021;
MyCashObject.SendCmd;

//				�������

MyCashObject.Text = '�������� �����';
MyCashObject.Qty = 1;
MyCashObject.Price = 10;
//�����
MyCashObject.Matrix:='010460043993125621JgXJ5.T\u001d8005112000\u001d930001\u001d923zbrLA==\u001d24014276281';
MyCashObject.CmdId = 2;
MyCashObject.SendCmd;
//				������� ���
MyCashObject.Text = '������� �� �������';
MyCashObject.CmdId = 4;
MyCashObject.SendCmd;
//				������� ����
MyCashObject.CmdId = 6;
MyCashObject.SendCmd;
//				��������� �������� ���������
MyCashObject.CmdId = 255;
MyCashObject.SendCmd;
