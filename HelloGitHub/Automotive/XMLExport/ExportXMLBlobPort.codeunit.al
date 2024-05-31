codeunit 50007 ExportXMLBlobPort
{
    procedure DownloadXMLPort()
    var
        FileMgt: Codeunit "File Management";
        AutomotiveXMLPort: XmlPort "Automotive Export";
        TempBlob: Codeunit "Temp Blob";
        OStream: OutStream;
        IStream: InStream;
        Filename: Text;
    begin
        Filename := 'Automotives.xml';
        TempBlob.CreateOutStream(OStream);
        AutomotiveXMLPort.SetDestination(OStream);
        AutomotiveXMLPort.Export();

        TempBlob.CreateInStream(IStream);
        File.DownloadFromStream(IStream, 'Download Automotive XML', '', FileMgt.GetToFilterText('', Filename), FileName);
    end;
}