/// <summary>
/// Table Automative (ID 50100).
/// This is a table of all automitives in the organization
/// </summary>
table 50100 "Automotive"
{
    DataClassification = CustomerContent;
    Caption = 'Automotives';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; Manufacturer; Code[20])
        {
            Caption = 'Manufacturer';
            TableRelation = "Automotive Manufacturer";
        }
        field(4; Model; Code[20])
        {
            Caption = 'Model';
            TableRelation = "Automotive Model";
        }
        field(5; Year; Integer)
        {
            Caption = 'Year';
            Description = 'Manufacturing year';
        }
        field(6; FuelType; enum FuelType)
        {
            Caption = 'Fuel Type';
        }

    }

    keys
    {
        key(NoKey; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, Manufacturer)
        {

        }

    }

    trigger OnInsert()
    var
        AutomotiveSetup: Record "Automotive Setup";
        IsHandled: Boolean;
        NoSeries: Codeunit "No. Series";
        Automotive: Record Automotive;
    begin
        IsHandled := false;
        OnBeforeInsertValidation(Rec, IsHandled);
        if IsHandled then
            exit;

        if Rec."No." = '' then begin
            AutomotiveSetup.InsertIfNotExists();
            AutomotiveSetup.TestField("No. Series");

            Rec."No." := NoSeries.GetNextNo(AutomotiveSetup."No. Series");
            Automotive.SetLoadFields("No.");
            while Automotive.Get(Rec."No.") do
                Rec."No." := NoSeries.GetNextNo(AutomotiveSetup."No. Series");
        end;

        if rec.Description = '' then begin
            rec.Description := rec."No.";
        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeInsertValidation(var Automotive: Record Automotive; var IsHandled: Boolean)
    begin
    end;
}