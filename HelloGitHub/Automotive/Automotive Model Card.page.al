page 50006 "Automotive Model Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Automotive Model";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Model Code"; Rec."Model Code")
                {
                    ToolTip = 'Specifies the value of the Model Code field.', Comment = '%';
                }

                field(Descrription; Rec.Descrription)
                {
                    ToolTip = 'Specifies the value of the Descrription field.', Comment = '%';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}