page 50003 "Automotive Role Center"
{
    PageType = RoleCenter;
    Caption = 'Automotive';

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Business Manager")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Activities; "Automotive Act.")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Help And Chart Wrapper"; "Help And Chart Wrapper")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Report Inbox Part"; "Report Inbox Part")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Power BI Report Spinner Part"; "Power BI Report Spinner Part")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action("AutomobileList")
            {
                ApplicationArea = All;
                Caption = 'Automotives';
                ToolTip = 'List of Automotives';
                RunObject = page "Automotive List";
            }
        }

        area(Reporting)
        {
            action(AutomotiveReport)
            {
                ApplicationArea = All;
                Caption = 'List of Automotives';
                ToolTip = 'Print a list of Automotives';
                RunObject = report AutomotiveReport;
            }

            action(AutomotiveExport)
            {
                ApplicationArea = All;
                Caption = 'Automotives Export';
                ToolTip = 'Export Automotives to an XML file';
                RunObject = xmlport "Automotive Export";
            }
        }

        area(Processing)
        {
            action(AutomotivesSetup)
            {
                ApplicationArea = All;
                Caption = 'Automotives Setup';
                ToolTip = 'Automitives Setup';
                RunObject = page "Automotive Setup";
            }

            action(AutomotiveWizard)
            {
                ApplicationArea = All;
                Caption = 'Automotives Assisted Setup';
                ToolTip = 'Automitives Assisted Setup';
                RunObject = page AutomotiveAssistedSetup;
            }
        }

    }
}