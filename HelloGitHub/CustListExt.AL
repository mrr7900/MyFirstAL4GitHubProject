pageextension 50000 "CustomerListExt" extends "Customer List"
{
    actions
    {
        addfirst(processing)
        {
            action(HelloWorld)
            {
                ApplicationArea = All;
                Caption = 'Hello World..';
                Promoted = true;
                Image = Home;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    Message('Hello %1!', rec.Name);
                end;
            }

        }
    }
}