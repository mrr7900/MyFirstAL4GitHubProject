report 50001 AutomotiveReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = WordReport;

    dataset
    {
        dataitem(Automotive; Automotive)
        {
            column(No_Automotive; "No.")
            {
            }
            column(Description_Automotive; Description)
            {
            }
            column(Manufacturer_Automotive; Manufacturer)
            {
            }
            column(FuelType_Automotive; FuelType)
            {
            }
            column(Model_Automotive; Model)
            {
            }
            column(Year_Automotive; Year)
            {
            }

            //Captions
            column(No_AutomotiveCpt; FieldCaption("No."))
            {
            }
            column(Description_AutomotiveCpt; FieldCaption("Description"))
            {
            }
            column(Manufacturer_AutomotiveCpt; FieldCaption("Manufacturer"))
            {
            }
            column(FuelType_AutomotiveCpt; FieldCaption("FuelType"))
            {
            }
            column(Model_AutomotiveCpt; FieldCaption("Model"))
            {
            }
            column(Year_AutomotiveCpt; FieldCaption("Year"))
            {
            }
        }
    }

    rendering
    {
        layout(WordReport)
        {
            Type = Word;
            LayoutFile = './Reports/AutomotiveReport.docx';
        }
        layout(ExcelReport)
        {
            Type = Excel;
            LayoutFile = './Reports/AutomotiveReport.xlsx';
        }
    }

    labels
    {
        TitleLbl = 'List of Automotive';
    }

    //trigger OnAfterGetRecord()
    trigger OnPreReport()
    var
        LanguageCU: Codeunit Language;
    begin
        CurrReport.Language := LanguageCU.GetLanguageIdOrDefault('DAN');
    end;

}