codeunit 50002 MyUpgradeCodeUnit
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany()
    var
        dt: DataTransfer;
        Item: Record Item;
        Automotive: Record Automotive;
    begin
        if Item.FindSet() then
            repeat
                Automotive.Init();
                Automotive."No." := Item."No.";
                Automotive.Description := Item.Description;
                Automotive.Insert()
            until Item.Next() = 0;
    end;

    var
        myInt: Integer;
}