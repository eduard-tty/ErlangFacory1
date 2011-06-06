%%%---------------------------------------------------------------------
%%% File    : db_list.erl
%% @author eduard@tty.nl <eduard@tty.nl>
%% @doc minialist database implementation 
%% @copyright by Author
%% @version '1.0'
%%%---------------------------------------------------------------------

-module(db_list).
-version('1.0').
-author('eduard@tty.nl <eduard@tty.nl>').
-copyright('Copyright (c) 2011 Author').

-export([
	  empty/0
	, insert/2
	, db_to_list/1
	, db_size/1
	, lookup/2
]).

-export([test/0]).

-import(lists).

-include("../include/backend.hrl").


empty() -> { db , [] }.

insert( Account , { db , Accounts } ) -> 
	case lists:member(Account, Accounts) of 
		true  -> {error, excists };
		false -> { db , [ Account | Accounts ] }
	end. 

db_to_list( {db, Accounts } ) ->  Accounts.

db_size( {db, Accounts } ) -> length(Accounts).

lookup(AccountNumber, { db, Accounts } ) -> 
	case lists:keyfind(AccountNumber, 2, Accounts) of
		false -> {error, instance};
		Account -> Account
	end.

test() -> 
	Db = empty(),
	Db2 = insert( #account{ no = 1, name = "Eduard"}, Db ),
	Db3 = insert( #account{ no = 2, name = "Ward"}, Db2 ),
	lookup(2, Db3).
	
