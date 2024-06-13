namespace my.bookshop;

using {cuid} from '@sap/cds/common';

entity Books : cuid {
  genre             : String;
  authorName        : String;
  title             : String;
  ISBN              : String;
  quantity          : String;
  availableQuantity : Integer64;
// manyUsersloans    : Composition of many Activeloans
//                       on manyUsersloans.takenbooks = $self

}

entity UserLogin : cuid {
  userName     : String;
  userid       : String;
  userpassword : String;
  
  typeOfUser   : String;

}

entity Activeloans : cuid {
  borrowerName      : String;
  borrowerUserId    : String;
  borrowingBookName : String;
  borrowingBookISBN : String;
  dueOn             : String;
}


entity Reservations : cuid {
  ReservedUserName : String;
  ReservedUserId   : String;
  ReservedBook     : String;

}
