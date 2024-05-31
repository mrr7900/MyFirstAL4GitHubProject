page 50002 "Automotive Act."
{
    PageType = CardPart;
    SourceTable = "Activities Cue";
    RefreshOnActivate = true;
    ShowFilter = false;

    layout
    {
        area(Content)
        {
            cuegroup("Activities")
            {
                field("Total Automotives"; Rec."Total Automotives")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Automotives field.', Comment = '%';
                }
                field("Sales This Month"; Rec."Sales This Month")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum of sales in the current month excluding taxes.';
                }
                field("Ongoing Sales Invoices"; Rec."Ongoing Sales Invoices")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies sales invoices that are not yet posted or only partially posted.';
                }
                field("Ongoing Sales Orders"; Rec."Ongoing Sales Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies sales orders that are not yet posted or only partially posted.';
                }
                field("Ongoing Sales Quotes"; Rec."Ongoing Sales Quotes")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies sales quotes that have not yet been converted to invoices or orders.';
                }
            }
        }
    }
}