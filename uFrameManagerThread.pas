unit uFrameManagerThread;

interface

uses
  System.Classes, Forms;

type
  TFrameManagerThread = class(TThread)
  private
    { Private declarations }
    procedure HandleMessage();
  protected
    procedure Execute; override;
  end;

  TImportThread = class(TThread)
  protected
    procedure Execute; override;
  end;

implementation

uses
  uFrmMain, uUtilsStrings, uGlobals, uImportTransactions, Vcl.Controls;

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

  Synchronize(UpdateCaption);

  and UpdateCaption could look like,

  procedure TFrameManagerThread.UpdateCaption;
  begin
  Form1.Caption := 'Updated in a thread';
  end;

  or

  Synchronize(
  procedure
  begin
  Form1.Caption := 'Updated in thread via an anonymous method'
  end
  )
  );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

{ TFrameManagerThread }

procedure TFrameManagerThread.Execute;
begin
  inherited;
  while not Application.Terminated do
  begin
    Synchronize(HandleMessage);
    Sleep(50);
  end;
end;

procedure TFrameManagerThread.HandleMessage();
var
  Cmd, SubCommand, FrameType: WideString;
begin
  Cmd := frmMain.FrameMessage.Command;
  if (Cmd <> '') then // We've got the message
  begin
    SubCommand := GetElem(1, Cmd, '|');
    FrameType := GetElem(2, Cmd, '|');
    if SubCommand = 'close' then
    begin
      if (FrameType = 'current') then
      begin
        frmMain.CloseFrame();
      end
      else
      begin
        frmMain.CloseFrame();
      end;
    end
    else if SubCommand = 'refresh' then
    begin
      frmMain.Refresh();
    end
    else if SubCommand = 'relogin' then
    begin
      frmMain.DoLogout();
      frmMain.DoMainLogin();
    end;
    frmMain.FrameMessage.Command := '';
  end;

  // Check pending transactions if we have opened cashdesk

end;

{ TImportThread }

procedure TImportThread.Execute;
var
 xCursor:TCursor;
begin
  inherited;
  while not Application.Terminated do
  begin
    if AutomaticImport then
    begin
      Sleep(600);
      //if frmMain.Active then
      //begin
       xCursor:= Screen.Cursor;
       Screen.Cursor:= crHourGlass;
        if TImportTransactions.CheckTableImport then
        begin
          TImportTransactions.ExecuteImport;
        end;
        Screen.Cursor:=xCursor;
      //end;
    end;
    if AutomaticTimeOut > 0 then
    begin
      Sleep(AutomaticTimeOut);
    end
    else
    begin
      Sleep(15 * 60 * 60);
    end;
  end;
end;

end.
