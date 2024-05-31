/// <summary>
/// Page Automotive List (ID 50000).
/// </summary>
page 50000 "Automotive List"
{
    Caption = 'Automotive List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Automotive";
    Editable = false;
    CardPageId = "Automotive Card";

    layout
    {
        area(Content)
        {
            repeater(Automotives)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Model field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(FuelType; Rec.FuelType)
                {
                    ToolTip = 'Specifies the value of the Fuel Type field.', Comment = '%';
                }
                field(Manufacturer; Rec.Manufacturer)
                {
                    ToolTip = 'Specifies the value of the Manufacturer field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
            }
        }
        area(Factboxes)
        {

        }
    }
    actions
    {
        area(Processing)
        {
            action(PrintAllNames)
            {
                Caption = 'Print All Names';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                Image = ShowList;
                ApplicationArea = All;

                trigger OnAction()
                var
                    MyListCodeunit: Codeunit MyListCodeunit;
                begin
                    MyListCodeUnit.GoThroughAllAutomitives();
                end;
            }
        }
    }
}