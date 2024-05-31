page 50004 ControlAddinPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                usercontrol(MyCustomControlAddin; MyControlAddin)
                {
                    trigger JSInitialize(MyText: Text; MyNumber: Integer)
                    begin
                        Message(MyText);
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(RequestJS)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    CurrPage.MyCustomControlAddin.InitializeJS();
                end;
            }
        }
    }
}