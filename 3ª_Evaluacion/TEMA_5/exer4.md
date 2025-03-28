1. Name of the owner of the agenda
    `/agenda/owner/identifiers/first_name/text()`
2. Home phone number of the owner.
    `//owner/phones/home/text()`
3. Names and surnames of the contacts in the agenda
    //person/identifiers/first_name/text() |
    //person/identifiers/surname/text()
4. Name and identifier of each contact
    //person/@id |
    //person/identifiers/first_name/text() |
    //person/identifiers/surname/text()
5. Details of the contact with identifier p02
    //person[@id="p02"]/identifiers/first_name/text() | 
    //person[@id="p02"]/identifiers/surname/text() |
    //person[@id="p02"]/address/street/text() 
6. Identifiers of the contacts who have a mobile phone
    `//mobile/../../@id`
