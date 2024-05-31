page 50001 "Automotive Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Automotive;
    AboutTitle = 'About Automotive';
    AboutText = 'The Automotive details can be used to setup a basic automotive, which can later be used for automotive details';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
            group(Configuration)
            {
                AboutTitle = 'Manage automotive conficuration';
                AboutText = 'Specify the aotomotive details';
                Caption = 'Configuration';
                field(FuelType; Rec.FuelType)
                {
                    AboutTitle = 'Specify Fuel Type';
                    AboutText = 'Specify the fueltype ogf the automobile';
                    ToolTip = 'Specifies the value of the Fuel Type field.', Comment = '%';
                }
                field(Manufacturer; Rec.Manufacturer)
                {
                    Importance = Promoted;
                    ToolTip = 'Specifies the value of the Manufacturer field.', Comment = '%';
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies the value of the Year field.', Comment = '%';
                }
                field(Model; Rec.Model)
                {
                    ToolTip = 'Specifies the value of the Model field.', Comment = '%';
                }
            }
        }
    }
}