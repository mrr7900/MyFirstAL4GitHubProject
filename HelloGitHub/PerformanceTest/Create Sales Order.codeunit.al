codeunit 50011 "Create Sales Order"
{
    Subtype = Test;

    trigger OnRun()
    var
        Customer: Record Customer;
        SalesOrder: TestPage "Sales Order";
    begin
        BCPTestContext.StartScenario('Initialize Order');
        Customer.FindFirst();
        SalesOrder.OpenNew();
        SalesOrder."No.".SetValue('');
        BCPTestContext.EndScenario('Initialize Order');
        BCPTestContext.UserWait();
        BCPTestContext.StartScenario('Enter Customer NO');
        SalesOrder."Sell-to Customer No.".SetValue(Customer."No.");
        Sleep(500);
        BCPTestContext.EndScenario('Enter Customer no');
        BCPTestContext.UserWait();
    end;

    var
        BCPTestContext: Codeunit "BCPT Test Context";
}