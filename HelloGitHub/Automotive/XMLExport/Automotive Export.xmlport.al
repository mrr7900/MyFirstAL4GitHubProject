xmlport 50000 "Automotive Export"
{
    Direction = Export;
    FileName = 'Automotives.xml';
    //Format = FixedText; //Ala bankformater
    //Format = VariableText; //csv filer
    //FieldDelimiter = ';';
    //FieldSeparator = '10';

    Format = Xml;

    schema
    {
        textelement(RootElement)
        {
            XmlName = 'root';

            tableelement(Automotive; Automotive)
            {
                //AutoSave = true;
                //AutoReplace = true;
                //AutoUpdate = true;

                fieldattribute(No; Automotive."No.") { }

                fieldelement(Description; Automotive.Description)
                {
                    //MinOccurs = 0; //Feltet behøver ikke være udfyldt, ved import
                }

                textelement(Configuration)
                {
                    XmlName = 'Configuration';
                    fieldelement(Model; Automotive.Model)
                    {
                        fieldattribute(Manufacturer; Automotive.Manufacturer) { }
                        fieldattribute(Year; Automotive.Year) { }
                    }
                }

                fieldelement(FuelType; Automotive.FuelType)
                {
                    XmlName = 'Fuel';
                }
            }
        }
    }
}