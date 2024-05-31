table 50000 "Automotive Manufacturer"
{
    DataClassification = ToBeClassified;
    Caption = 'Manufacturer';

    fields
    {
        field(1; "Manufacturer Code"; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(2; "Descrription"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
    }
}