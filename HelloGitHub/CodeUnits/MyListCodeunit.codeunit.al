codeunit 50009 MyListCodeunit
{
    procedure GoThroughAllAutomitives()
    var
        Automotive: Record Automotive;
        AutomotiveList: List of [Text];
        AutomotiveName: Text;
        StringOfNames: Text;
    begin
        Automotive.SetLoadFields(Description);
        if Automotive.FindSet() then
            repeat
                if not AutomotiveList.Contains(Automotive.Description) then
                    AutomotiveList.Add(Automotive.Description);
            until Automotive.Next() = 0;

        foreach AutomotiveName in AutomotiveList do begin
            if StringOfNames <> '' then
                StringOfNames += ', ';

            StringOfNames += AutomotiveName;
        end;

        Message(StringOfNames);
    end;

    procedure StoreAllCustomerBalances()
    var
        CustomerBalances: Dictionary of [Code[20], Decimal];
        Customer: Record Customer;
        Balance: decimal;
    begin
        Customer.SetAutoCalcFields("Balance (LCY)");
        if Customer.FindSet() then
            repeat
                CustomerBalances.Add(Customer."No.", Customer."Balance (LCY)");
            until Customer.Next() = 0;

        if CustomerBalances.Get('1000', Balance) then
            Message('The balance of Customer 1000 is:\\' + Format(Balance));
    end;
}