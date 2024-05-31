codeunit 50003 MyCUWithTableNo
{
    TableNo = Customer;
    trigger OnRun()
    begin
        Message(Rec.Name);
    end;

    var
        myInt: Integer;
}