unit Pokédex;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  System.JSON, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, REST.Types, Vcl.Buttons, Vcl.MPlayer;


type
  TForm1 = class(TForm)
    edtBusca: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    NetHTTPClient1: TNetHTTPClient;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    lblNome: TLabel;
    imgPokemon: TImage;
    Shape20: TShape;
    Shape21: TShape;
    lblID: TLabel;
    Shape19: TShape;
    Shape22: TShape;
    btnBuscar: TSpeedButton;
    lblTipo: TLabel;
    Shape23: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape24: TShape;
    Shape29: TShape;
    MediaPlayer1: TMediaPlayer;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnBuscarClick(Sender: TObject);
var
  pokemon: string;
  json: TJSONObject;
  typesArray: TJSONArray;
  tipoStr: string;
  i: Integer;
  spriteURL: string;
  imgStream: TMemoryStream;
begin
  pokemon := LowerCase(Trim(edtBusca.Text));
  if pokemon = '' then
  begin
    ShowMessage('Digite o nome ou número do Pokémon.');
    Exit;
  end;

  RESTClient1.BaseURL := 'https://pokeapi.co/api/v2/pokemon/';
  RESTRequest1.Client := RESTClient1;
  RESTRequest1.Response := RESTResponse1;
  RESTRequest1.Resource := pokemon;

  try
    RESTRequest1.Execute;

    if not Assigned(RESTResponse1.JSONValue) then
    begin
      ShowMessage('Erro: resposta JSON vazia.');
      Exit;
    end;

    if not (RESTResponse1.JSONValue is TJSONObject) then
    begin
      ShowMessage('Erro: estrutura de resposta inválida.');
      Exit;
    end;

    json := RESTResponse1.JSONValue as TJSONObject;

    // Nome e ID
    lblNome.Caption := ' ' + json.GetValue<string>('name');
    lblID.Caption := json.GetValue<string>('id') + ' - ';

    // Tipos
    tipoStr := '';
    typesArray := json.GetValue<TJSONArray>('types');
    for i := 0 to typesArray.Count - 1 do
    begin
      if i > 0 then tipoStr := tipoStr + ', ';
      tipoStr := tipoStr + typesArray.Items[i]
        .GetValue<TJSONObject>('type')
        .GetValue<string>('name');
    end;
    lblTipo.Caption := tipoStr;

    // Sprite
    spriteURL := json.GetValue<TJSONObject>('sprites')
      .GetValue<string>('front_default');

    if spriteURL <> '' then
    begin
      imgStream := TMemoryStream.Create;
      try
        NetHTTPClient1.Get(spriteURL, imgStream);
        imgStream.Position := 0;
        imgPokemon.Picture.LoadFromStream(imgStream);
      finally
        imgStream.Free;
      end;
    end
    else
    begin
      imgPokemon.Picture := nil;
    end;

  except
    on E: Exception do
    begin
      ShowMessage('Erro ao buscar Pokémon: ' + E.Message);
      lblNome.Caption := '';
      lblID.Caption := '';
      lblTipo.Caption := '';
      imgPokemon.Picture := nil;
    end;
  end;
end;





procedure TForm1.FormCreate(Sender: TObject);
begin
  MediaPlayer1.FileName := ExtractFilePath(Application.ExeName) + 'sounds\pokedex_theme.wav';
  MediaPlayer1.Open;
  MediaPlayer1.Play;

end;

procedure TForm1.MediaPlayer1Notify(Sender: TObject);
begin
  if MediaPlayer1.Mode = mpStopped then
    MediaPlayer1.Play;
end;

end.
