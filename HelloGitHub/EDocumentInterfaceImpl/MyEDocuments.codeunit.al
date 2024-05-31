codeunit 50008 "MyEDocuments" implements "E-Document"
{
    procedure Check(var SourceDocumentHeader: RecordRef; EDocumentService: Record "E-Document Service"; EDocumentProcessingPhase: enum Microsoft.eServices.EDocument."E-Document Processing Phase")
    var
        SalesHeader: Record "Sales Header";
        EDocPEPPOLBIS30: Codeunit "EDoc PEPPOL BIS 3.0";
    begin
        case SourceDocumentHeader.Number of
            Database::"Sales Header":
                begin
                    case EDocumentProcessingPhase of
                        EDocumentProcessingPhase::Release:
                            begin
                                SourceDocumentHeader.SetTable(SalesHeader);
                                SalesHeader.TestField("Your Reference");
                            end;

                    end;
                end;
        end;
    end;

    procedure Create(EDocumentService: Record "E-Document Service"; var EDocument: Record "E-Document"; var SourceDocumentHeader: RecordRef; var SourceDocumentLines: RecordRef; var TempBlob: codeunit System.Utilities."Temp Blob")
    begin

    end;

    procedure CreateBatch(EDocumentService: Record "E-Document Service"; var EDocuments: Record "E-Document"; var SourceDocumentHeaders: RecordRef; var SourceDocumentsLines: RecordRef; var TempBlob: codeunit System.Utilities."Temp Blob")
    begin

    end;

    procedure GetBasicInfoFromReceivedDocument(var EDocument: Record "E-Document"; var TempBlob: codeunit System.Utilities."Temp Blob")
    begin

    end;

    procedure GetCompleteInfoFromReceivedDocument(var EDocument: Record "E-Document"; var CreatedDocumentHeader: RecordRef; var CreatedDocumentLines: RecordRef; var TempBlob: codeunit System.Utilities."Temp Blob")
    begin

    end;
}