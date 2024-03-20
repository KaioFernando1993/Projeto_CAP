namespace my.bookshop;

entity Books
{
    key ID : Integer;
    title : String;
    stock : Integer;
    autorsID: String;
    autors : Association to one Autors on autors.ID = $self.autorsID;
}

entity Autors
{
    key ID : Integer;
    name : String;
    age : Integer;
    books : Association to many Books on books.autorsID = $self.ID ;
}
