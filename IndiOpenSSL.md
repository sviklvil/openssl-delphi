# Правка INDY для работы с OPENSSL #

Что бы INDY компоненты работали по SSL надо у клиента и сервера переписать соответствующие методы, и установить у IOHandler PassThrough=False

```
procedure TIdSSLCmdTCPClient.Connect;
begin
  // I doubt that there is explicit SSL support in the IRC protocol
  if (IOHandler is TIdSSLIOHandlerSocketBase) then begin
    (IOHandler as TIdSSLIOHandlerSocketBase).PassThrough := False;
  end;
  try
   inherited Connect;
  //
  except
    on E: EIdSocketError do begin
      inherited Disconnect;
      raise EIdSSLCmdTCPClient.Create(RSOSSLConnectFailed);
    end;
  end;
end;

...


procedure TIdSSLCmdTCPServer.DoConnect(AContext: TIdContext);
begin
  if AContext.Connection.IOHandler is TIdSSLIOHandlerSocketBase then begin
    TIdSSLIOHandlerSocketBase(AContext.Connection.IOHandler).PassThrough := False;
  end;
  inherited DoConnect(AContext);
end;

```