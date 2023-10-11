unit uLeituraAquivo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Btn_Ler: TButton;
    Lbx_Lista: TListBox;
    procedure Btn_LerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Btn_LerClick(Sender: TObject);
var

  lista : TextFile;
  conteudo : String;

begin

 AssignFile(lista, 'Lista.txt');
 rewrite(lista);
 append(lista);
 writeln(lista, 'um');
 writeln(lista, 'dois');
 writeln(lista, 'tres');
 writeln(lista, 'quatro');
 reset(lista);

 while not EOF(lista) do
 begin
   Readln(lista, conteudo);
   Form7.Lbx_Lista.Items.Add(conteudo);
 end;

 CloseFile(lista);


end;

end.
