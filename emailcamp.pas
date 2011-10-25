unit emailcamp;

//creado por james jara 2008
interface

uses
  Windows, Messages, SysUtils, Variants,MSHTML , Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, ExtCtrls, ImgList, jpeg, StdCtrls, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, Buttons,  inifiles,
   RegExpr, ToolWin, ActnMan, ActnCtrls, ActnList, IdAttachmentFile,PlatformDefaultStyleActnCtrls,
  CategoryButtons, ButtonGroup, ExtDlgs, OleCtrls, SHDocVw, IdMessage;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    N1: TMenuItem;
    AbrirProyecto1: TMenuItem;
    N2: TMenuItem;
    Salir1: TMenuItem;
    Acerca1: TMenuItem;
    Acerca2: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Image3: TImage;
    BalloonHint1: TBalloonHint;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Edit2: TEdit;
    TabSheet7: TTabSheet;
    Panel5: TPanel;
    Image5: TImage;
    Panel6: TPanel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Panel7: TPanel;
    detinos: TListBox;
    Label7: TLabel;
    Edit7: TEdit;
    encontrados: TListBox;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BitBtn3: TBitBtn;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    Memo1: TMemo;
    Panel9: TPanel;
    BitBtn5: TBitBtn;
    IdSMTP1: TIdSMTP;
    OpenDialog1: TOpenDialog;
    temp: TMemo;
    Button4: TButton;
    SpeedButton3: TSpeedButton;
    Panel10: TPanel;
    ButtonGroup1: TButtonGroup;
    ImageList2: TImageList;
    SaveTextFileDialog1: TSaveTextFileDialog;
    OpenTextFileDialog1: TOpenTextFileDialog;
    WebBrowser1: TWebBrowser;
    BitBtn7: TBitBtn;
    Memo2: TMemo;
    Label10: TLabel;
    Edit17: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn6: TBitBtn;
    SaveTextFileDialog2: TSaveTextFileDialog;
    OpenDialog2: TOpenDialog;
    MailMessage: TIdMessage;
    Edit8: TEdit;
    Archivo: TButton;
    Edit9: TEdit;
    Label14: TLabel;
    Edit10: TEdit;
    Label15: TLabel;
    AttachmentDialog: TOpenDialog;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    Memo3: TRichEdit;
    Button5: TButton;
    Timer1: TTimer;
    quien: TEdit;
    ProgressBar1: TProgressBar;
    Label8: TLabel;
    Label16: TLabel;
    errores: TListBox;
    listos: TListBox;
    BitBtn8: TBitBtn;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure ButtonGroup1Items0Click(Sender: TObject);
    procedure ButtonGroup1Items1Click(Sender: TObject);
    procedure ButtonGroup1Items3Click(Sender: TObject);
    procedure ButtonGroup1Items4Click(Sender: TObject);
    procedure ButtonGroup1Items5Click(Sender: TObject);
    procedure ButtonGroup1Items2Click(Sender: TObject);
    procedure ButtonGroup1Items6Click(Sender: TObject);
    procedure ButtonGroup1Items7Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure AbrirProyecto1Click(Sender: TObject);
    procedure Acerca2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ArchivoClick(Sender: TObject);
    procedure IdSMTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit17Change(Sender: TObject);
    procedure IdSMTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdSMTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdSMTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdSMTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn8Click(Sender: TObject);
  private
    procedure guardarconfiguracionsmtp;
    procedure guardarconfiguraciongmail;
    procedure guardaremails;
    procedure guardarcorreos;
    procedure guardarcampas ;
        { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.Salir1Click(Sender: TObject);
begin
close();
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if edit1.Text = '' then
begin
ShowMessage('Debes seleccionar un host smtp')
end
else
begin
  IdSMTP1.Host := edit1.Text;
  IdSMTP1.Port :=  word(StrToInt(edit2.text));
    try
    try
      IdSMTP1.Connect();
      ShowMessage('La conexion a sido realizada con exito!');
      except on E:Exception do
    ShowMessage('El servidor elegido no responde!');
    end;
  finally
    if IdSMTP1.Connected then IdSMTP1.Disconnect;
  end;
end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
if edit3.Text = '' then
begin
ShowMessage('Debes seleccionar un host de gmail')
end
else
begin
    //----Encriptación TLS //Tipo de encriptación
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Method:=sslvTLSv1;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Mode:=sslmUnassigned;

    //Usar encriptación
    IdSMTP.IOHandler:= IdSSLIOHandlerSocketOpenSSL;
    IdSMTP.UseTLS:= utUseExplicitTLS ;
    //-----Configuración SMTP //Servidor
    //Puerto puede ser 25 y 587
    IdSMTP.Host := edit3.Text;
    IdSMTP.Port :=  word(StrToInt(edit4.text));
    //Tu Usuario     //Tu Contraseña
    IdSMTP.Username :=  edit5.Text;
    IdSMTP.Password  := edit6.Text;
    try
    try
      IdSMTP.Connect();
      ShowMessage('La conexion a sido realizada con exito!');
      except on E:Exception do
    ShowMessage('El servidor elegido no responde!');
    end;
  finally
    if IdSMTP.Connected then IdSMTP.Disconnect;
  end;
end;
end;

procedure TForm1.TabSheet1Show(Sender: TObject);
begin
form1.height:=490;
end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
form1.height:=490;
end;

procedure TForm1.TabSheet3Show(Sender: TObject);
begin
form1.height:=680;
end;

procedure TForm1.TabSheet7Show(Sender: TObject);
begin
form1.height:=680;
try
Memo2.Lines.LoadFromFile(  changeFileExt(Application.ExeName,'.ini') );
except on E:Exception do
end;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
guardarcampas;
guardarcorreos;
guardaremails;
if quien.Text = 'smtp' then
begin
  guardarconfiguracionsmtp;
end;
if quien.Text = 'gmail' then
begin
 guardarconfiguraciongmail;
end;
end;

procedure TForm1.AbrirProyecto1Click(Sender: TObject);
var
  ini : TIniFile;
 RegExpr: TRegExpr;
  antes, convertido1,convertido2  : string;
begin
   RegExpr := nil;
   if OpenDialog2.Execute then
   begin
 Ini := TIniFile.Create(OpenDialog2.FileName);
  try
    temp.Lines.LoadFromFile(OpenDialog2.FileName);
    RegExpr := TRegExpr.Create;
   edit17.Text := ini.ReadString('Campanas','Nombre','');
   Memo1.Text := ini.ReadString('Email','contenido','');
   Edit3.text := ini.ReadString('Configuracion','Host','');
   Edit4.text := ini.ReadString('Configuracion','Puerto','');
   Edit5.text := ini.ReadString('Configuracion','Usuario','');
   Edit1.text := ini.ReadString('Configuracion','Host','');
   Edit2.text := ini.ReadString('Configuracion','Puerto','');
   edit10.text := ini.ReadString('Email','titulo','');
   edit9.text := ini.ReadString('Configuracion','sender','');
   quien.text   := ini.ReadString('Configuracion','var','');

  antes :=  ini.ReadString('Email','contenido','');

  convertido1  := StringReplace(antes, '$%/%$', ' ', [rfReplaceAll, rfIgnoreCase]);
  convertido2  := StringReplace( convertido1 , '$&/&$' , #13#10, [rfReplaceAll]);

  memo1.Text := convertido2 ;
guardarcampas;
guardarcorreos;
guardaremails;
if quien.Text = 'smtp' then
begin
guardarconfiguracionsmtp;
BitBtn1Click( Self );
end;
if quien.Text = 'gmail' then
begin
guardarconfiguraciongmail;
BitBtn2Click( Self );
end;
TabSheet1.TabVisible := true ;
TabSheet2.TabVisible := true ;
TabSheet3.TabVisible := true ;
TabSheet4.TabVisible := true ;
TabSheet5.TabVisible := true ;
TabSheet7.TabVisible := true ;

   if RegExpr <> nil then begin
        RegExpr.Expression := '[^\w\d\-\.]([\w\d\-\.]+@[\w\d\-]+'
                            + '(\.[\w\d\-]+)+)[^\w\d\-\.]';
        if RegExpr.Exec(temp.Text) then
          repeat
      detinos.Items.Add(RegExpr.Match[1]);
          until not RegExpr.ExecNext;
  end
  finally
    ini.Free;
    RegExpr.Free;
  end
   end
   else
   end;





procedure TForm1.Acerca2Click(Sender: TObject);
begin
ShowMessage('Desarrollado por James Josue Jara A., V1');
end;

procedure TForm1.ArchivoClick(Sender: TObject);
begin
  if AttachmentDialog.Execute then
    edit8.Text := AttachmentDialog.FileName;
end;


procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if edit1.Text = '' then
begin
ShowMessage('Debes seleccionar un host smtp')
end
else
begin
     quien.Text := 'smtp'  ;
  IdSMTP1.Host := edit1.Text;
  IdSMTP1.Port :=  word(StrToInt(edit2.text));
    try
    try
      IdSMTP1.Connect();
      //guardar informacion del servidor smtp
      guardarconfiguracionsmtp();
      //MUESTRA EL TAB DOS Y SE PASA ALLI
   TabSheet2.TabVisible := true ;
   PageControl1.TabIndex := 1;
      except on E:Exception do
    ShowMessage('El servidor elegido no responde!');
    end;
  finally
    if IdSMTP1.Connected then IdSMTP1.Disconnect;
  end;
end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
if edit3.Text = '' then
begin
ShowMessage('Debes seleccionar un host de gmail')
end
else
begin
     quien.Text := 'gmail'  ;
    //----Encriptación TLS //Tipo de encriptación
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Method:=sslvTLSv1;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Mode:=sslmUnassigned;

    //Usar encriptación
    IdSMTP.IOHandler:= IdSSLIOHandlerSocketOpenSSL;
    IdSMTP.UseTLS:= utUseExplicitTLS ;
    //-----Configuración SMTP //Servidor
    //Puerto puede ser 25 y 587
    IdSMTP.Host := edit3.Text;
    IdSMTP.Port :=  word(StrToInt(edit4.text));
    //Tu Usuario     //Tu Contraseña
    IdSMTP.Username :=  edit5.Text;
    IdSMTP.Password  := edit6.Text;
    try
    try
      IdSMTP.Connect();
      //guardar informacion del servidor smtp
      guardarconfiguraciongmail();
      //MUESTRA EL TAB DOS Y SE PASA ALLI
      TabSheet2.TabVisible := true ;
      PageControl1.TabIndex := 1;
      except on E:Exception do
      ShowMessage('El servidor elegido no responde!');
      end;
  finally
    if IdSMTP.Connected then IdSMTP.Disconnect;
  end;
end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
if detinos.Items.Count > 0 then
begin
guardaremails;
//guardar informacion
//MUESTRA EL TAB 2 Y SE PASA ALLI
TabSheet3.TabVisible := true;
PageControl1.TabIndex := 2 ;
end
else
ShowMessage('Para continuar, debes agregar por lomenos 1 destino!');
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
if  memo1.Lines.Text = '' then
ShowMessage('Para continuar, debes ingresar un mensaje!')
else
begin
guardarcorreos;
//guardar informacion
//MUESTRA EL TAB 2 Y SE PASA ALLI
TabSheet7.TabVisible := true;
PageControl1.TabIndex := 3 ;

end
end;


procedure TForm1.BitBtn5Click(Sender: TObject);
var
i :integer;
begin
if IdSMTP.Connected then IdSMTP.Disconnect;
if IdSMTP1.Connected then IdSMTP1.Disconnect;
if quien.Text = 'smtp' then
begin
 IdSMTP1.Host := edit1.Text;
 IdSMTP1.Port :=  word(StrToInt(edit2.text));
  try
  try
  with  detinos do
  begin
   for i := -1 + Items.Count downto 0 do
  begin
  //setup mail message
  MailMessage.From.Address := Edit9.Text ;
  MailMessage.Recipients.EMailAddresses := Items.Strings[i];
  MailMessage.Subject := Edit10.Text;
  MailMessage.Body.Text := memo1.Text;
  if FileExists(Edit8.Text ) then
  TIdAttachmentFile.Create(MailMessage.MessageParts,Edit8.Text );
  try
  begin
   IdSMTP1.Connect();
  IdSMTP1.Send(MailMessage);
    //Desconectamos
  IdSMTP1.Disconnect;
  memo3.SelAttributes.Color := clGreen ;
  memo3.Lines.Add('Mensaje enviado correctamente a ' + Items.Strings[i] );
  SendMessage(Handle, EM_SCROLL, SB_LINEDOWN, 0);
  memo3.SelAttributes.Color :=  clred  ;
  listos.Items.Add( Items.Strings[i]);
  Items.Delete(i);
  ProgressBar1.Position := 0 ;
  Sleep(1000);
  end
  Except
  begin
    //Desconectamos
  IdSMTP1.Disconnect;
     memo3.SelAttributes.Color := clred  ;
     memo3.Lines.Add('Error en destino ' + Items.Strings[i] );
     SendMessage(Handle, EM_SCROLL, SB_LINEDOWN, 0);
     memo3.SelAttributes.Color :=  clGreen  ;
 errores.Items.Add( Items.Strings[i]);
  Items.Delete(i);
  ProgressBar1.Position := 0 ;
  Sleep(1000);
  end;
  end;
  end;
  end;
  except on E:Exception do
 begin
 memo3.Lines.Insert(0, 'ERROR: ' + E.Message);
  if IdSMTP1.Connected then IdSMTP1.Disconnect;
 end;
 end;
 finally
 if IdSMTP1.Connected then IdSMTP1.Disconnect;
 end;
 end
///////////////////////////////////////////////////////////
else
///////////////////////////////////////////////////////////
begin
if quien.Text = 'gmail' then
begin
  //----Encriptación TLS //Tipo de encriptación
 IdSSLIOHandlerSocketOpenSSL.SSLOptions.Method:=sslvTLSv1;
 IdSSLIOHandlerSocketOpenSSL.SSLOptions.Mode:=sslmUnassigned;
 //Usar encriptación
 IdSMTP.IOHandler:= IdSSLIOHandlerSocketOpenSSL;
 IdSMTP.UseTLS:= utUseExplicitTLS ;
 //-----Configuración SMTP //Servidor
  //-----Configuración SMTP //Servidor
    //Puerto puede ser 25 y 587
    IdSMTP.Host := edit3.Text;
    IdSMTP.Port :=  word(StrToInt(edit4.text));
     //Tu Usuario     //Tu Contraseña
    IdSMTP.Username :=  edit5.Text;
    IdSMTP.Password  := edit6.Text; //setup mail message
try
try
with detinos do
begin
    for i := -1 + Items.Count downto 0 do   begin
  IdMessage.From.Address:= edit5.Text;
  idMessage.Recipients.EMailAddresses := Items.Strings[i];
  IdMessage.Subject := Edit10.Text;
  idMessage.Body.Text := memo1.Text;
  if FileExists(Edit8.Text) then
  TIdAttachmentFile.Create(MailMessage.MessageParts,Edit8.Text );
  try
  begin
  IdSMTP.Connect;
  //Enviando mail
  IdSMTP.Send(IdMessage);
  //Desconectamos
  IdSMTP.Disconnect;
  memo3.SelAttributes.Color := clGreen ;
    memo3.Lines.Add('Mensaje enviado correctamente a ' + Items.Strings[i] );
    SendMessage(Handle, EM_SCROLL, SB_LINEDOWN, 0);
    memo3.SelAttributes.Color :=  clred  ;
    listos.Items.Add( Items.Strings[i]);
    Items.Delete(i);
    ProgressBar1.Position := 0 ;
    Sleep(100);
  end
  Except
  //Desconectamos
  IdSMTP.Disconnect;
  memo3.SelAttributes.Color := clred  ;
  memo3.Lines.Add('Error en destino ' + Items.Strings[i] );
  SendMessage(Handle, EM_SCROLL, SB_LINEDOWN, 0);
  memo3.SelAttributes.Color :=  clGreen  ;
  errores.Items.Add( Items.Strings[i]);
  Items.Delete(i);
  ProgressBar1.Position := 0 ;
  Sleep(100);
  end;
end;
end;
except on E:Exception do
begin
memo3.Lines.Insert(0, 'ERROR: ' + E.Message);
end;
end;
finally
if IdSMTP.Connected then IdSMTP.Disconnect;
end;
end;

end;
end;



procedure TForm1.BitBtn6Click(Sender: TObject);
begin
TabSheet7Show(self);
//save  primera ves
if SaveTextFileDialog2.Execute then
Memo2.Lines.SaveToFile(SaveTextFileDialog2.FileName);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
Memo1.Lines.SaveToFile('temp.html');
WebBrowser1.Navigate('file://'+  GetCurrentDir  + '/temp.html');
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
Timer1.Enabled := false;
end;

procedure TForm1.Button1Click(Sender: TObject);
  // Extrae direcciones de email
  var
    RegExpr: TRegExpr;
begin
    if OpenDialog1.Execute then
    temp.Lines.LoadFromFile(OpenDialog1.FileName);
    RegExpr := nil;
    try
      RegExpr := TRegExpr.Create;
      if RegExpr <> nil then begin
        RegExpr.Expression := '[^\w\d\-\.]([\w\d\-\.]+@[\w\d\-]+'
                            + '(\.[\w\d\-]+)+)[^\w\d\-\.]';
        if RegExpr.Exec(temp.Text) then
          repeat
          encontrados.Items.Add(RegExpr.Match[1]);
          until not RegExpr.ExecNext;
      end;
    except
    end;
    RegExpr.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
detinos.Items.Assign(encontrados.Items);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
i : integer;
begin
   with encontrados do
  begin
    for i := -1 + Items.Count downto 0 do
    if Selected[i] then
  detinos.Items.Add( Items.Strings[i]);
  encontrados.Items.Delete(i);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  ii : integer;
begin
  with detinos do
  begin
    for ii := -1 + Items.Count downto 0 do
    if Selected[ii] then Items.Delete(ii) ;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin

  if not ExecRegExpr('[\w\d\-\.]+@[\w\d\-]+(\.[\w\d\-]+)+',
        Edit7.Text) then

    begin
    Edit7.Hint :=  'La dirección de email no es válida';
    Edit7.CustomHint.ShowHint;
    end
    else
    begin
    Edit7.Hint := 'Enter para agregar un destino';
    Edit7.CustomHint.ShowHint;
    detinos.Items.Add(Edit7.text);
    end
  end;


procedure TForm1.ButtonGroup1Items0Click(Sender: TObject);
begin
Memo1.Lines.Append('<B>'+
InputBox('Escriba el texto','Texto para ponerlo en negrita','escriba aqui')
+'</B>');
end;

procedure TForm1.ButtonGroup1Items1Click(Sender: TObject);
begin
Memo1.Lines.Append('<I>'+
InputBox('Escriba el texto','Texto para ponerlo en italic','escriba aqui')
+'</I>');
end;

procedure TForm1.ButtonGroup1Items2Click(Sender: TObject);
begin
Memo1.Lines.Append('<u>'+
InputBox('Escriba el texto','Texto para ponerlo subrayado','escriba aqui')
+'</u>');
end;

procedure TForm1.ButtonGroup1Items3Click(Sender: TObject);
begin
Memo1.Lines.Append('<a href="'+
InputBox('Crear Hipervinculo','Escriba el link','Http://lindeejemplo.com')
+'">'+
InputBox('Crear Hipervinculo','Escriba el texto del link','Ejemplo: visitar pagina')
 +'</a>');
end;

procedure TForm1.ButtonGroup1Items4Click(Sender: TObject);
begin
Memo1.Lines.Append('<img src="'+
InputBox('Añadir un mensaje','Escribe el link de la imagen','Http://ejemplo.com/imagen.gif')
+'">');
end;

procedure TForm1.ButtonGroup1Items5Click(Sender: TObject);
begin
Memo1.Lines.Append('<a href="'+
InputBox('Crear Hipervinculo con imagen','Escriba el link','Http://lindeejemplo.com')
+'"><img src="'+
InputBox('Crear Hipervinculo','Escriba el link de la imagen','Http://ejemplo.com/imagen.gif')
 +'"></a>');
end;

procedure TForm1.ButtonGroup1Items6Click(Sender: TObject);
begin
//save
if SaveTextFileDialog1.Execute then
   Memo1.Lines.SaveToFile(SaveTextFileDialog1.FileName);
end;

procedure TForm1.ButtonGroup1Items7Click(Sender: TObject);
begin
//load
if OpenTextFileDialog1.Execute then
Memo1.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
end;

procedure TForm1.Edit17Change(Sender: TObject);
begin
TabSheet7Show(self);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if IdSMTP.Connected then IdSMTP.Disconnect;
if IdSMTP1.Connected then IdSMTP1.Disconnect;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
try
     DeleteFile(ChangeFileExt(Application.ExeName,'.ini'))
except
end;
end;

procedure TForm1.IdSMTP1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
   with memo3 do
   begin
    SelAttributes.Color :=  clred  ;
    Lines.Insert(0,'Status: ' + AStatusText);
     SelAttributes.Color :=  clred  ;
   end;

end;

procedure TForm1.IdSMTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
ProgressBar1.Position := +2 ;
end;

procedure TForm1.IdSMTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
ProgressBar1.Position := 0 ;
end;

procedure TForm1.IdSMTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
ProgressBar1.Position := 10 ;
end;

procedure TForm1.IdSMTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  with memo3 do
   begin
    SelAttributes.Color :=  clred  ;
    Lines.Insert(0,'Status: ' + AStatusText);
     SelAttributes.Color :=  clred  ;
   end;
end;

procedure TForm1.IdSMTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
ProgressBar1.Position := AWorkCount*10;
end;

procedure TForm1.IdSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
ProgressBar1.Max := 10;
end;

procedure TForm1.guardarconfiguracionsmtp;
var
  ini : TIniFile;
begin
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
    ini.WriteString('Configuracion','Tipo','smtp');
    ini.WriteString('Configuracion','Host',Edit1.text);
    ini.WriteString('Configuracion','Puerto',Edit2.text);
    ini.WriteString('Configuracion','sender',Edit9.text );
    ini.WriteString('Configuracion','var','smtp');
  finally
    ini.Free;
  end;
end;

procedure TForm1.guardarconfiguraciongmail;
var
  ini : TIniFile;
begin
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
    ini.WriteString('Configuracion','Tipo','gmail');
    ini.WriteString('Configuracion','Host',Edit3.text);
    ini.WriteString('Configuracion','Puerto',Edit4.text);
    ini.WriteString('Configuracion','Usuario',Edit5.text);
    ini.WriteString('Configuracion','var','gmail');
  finally
    ini.Free;
  end;
end;

procedure TForm1.guardaremails;
var
  ini : TIniFile;
  i : integer;
  i2 : integer;
begin
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
  with  detinos do
  begin
  for i := -1 + Items.Count downto 0 do
  ini.WriteString('Destinos ',Items.Strings[i],'');
  end;
  if listos.Items.Text = '' then
  else
  begin
begin
with listos do
begin
for i2 := -1 + Items.Count downto 0 do
ini.WriteString('listos ',Items.Strings[i2],'');
end;
end;  end;
  if errores.Items.Text = '' then
  else
begin
with  errores do
begin
for i2 := -1 + Items.Count downto 0 do
  ini.WriteString('Errores ',Items.Strings[i],'');
Memo2.Lines.Add(Items.Strings[i2]);
end;
end;
  finally
    ini.Free;
  end;
end;

procedure TForm1.guardarcorreos;
var
  ini : TIniFile;
  antes, convertido1,convertido2  : string;
begin
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
  antes := Memo1.Text;

  convertido1  := StringReplace(antes, ' ', '$%/%$', [rfReplaceAll, rfIgnoreCase]);
  convertido2  := StringReplace( convertido1 , #13#10, '$&/&$', [rfReplaceAll]);
  ini.WriteString('Email ','titulo', edit10.Text );
  ini.WriteString('Email ','contenido', convertido2 );
  finally
  ini.Free;
  end;
end;

procedure TForm1.guardarcampas;
var
  ini : TIniFile;
begin
  Ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini'));
  try
 ini.WriteString('Campanas ','Nombre', edit17.Text );
  finally
    ini.Free;
  end;
end;




end.
//creado por james jara 2008

