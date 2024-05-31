table 50001 "Automotive Model"
{
    DataClassification = ToBeClassified;
    Caption = 'Automotive Models';

    fields
    {
        field(1; "Model Code"; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(2; "Descrription"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }
}