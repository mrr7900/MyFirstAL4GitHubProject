codeunit 50000 MyCodeunit
{
    Access = Internal;
    trigger OnRun()
    begin
        GlobalProcedure();
        LocalProcedure();
    end;

    var
        myInt: Integer;

    procedure GlobalProcedure()
    var
        myInt: Integer;
    begin

    end;

    local procedure LocalProcedure()
    var
        myInt: Integer;
    begin

    end;
}