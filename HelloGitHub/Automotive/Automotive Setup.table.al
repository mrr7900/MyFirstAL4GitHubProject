table 50002 "Automotive Setup"
{
    DataClassification = SystemMetaData;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetaData;
        }

        //You might want to add fields here
        field(2; "No. Series"; Code[50])
        {
            DataClassification = SystemMetaData;
            TableRelation = "No. Series";
            Caption = 'No. Series';
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        RecordHasBeenRead: Boolean;

    procedure GetRecordOnce()
    begin
        if RecordHasBeenRead then
            exit;
        Get();
        RecordHasBeenRead := true;
    end;

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;


}