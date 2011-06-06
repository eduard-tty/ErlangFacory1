%%%---------------------------------------------------------------------
%%% File    : db_list.erl
%% @author eduard@tty.nl <eduard@tty.nl>
%% @doc minialist database implementation 
%% @copyright by Author
%% @version '1.0'
%%%---------------------------------------------------------------------

-module(ebank_sup).
-version('1.0').
-behaviour(supervisor).
-author('eduard@tty.nl <eduard@tty.nl>').
-copyright('Copyright (c) 2011 Author').

-export([
	  empty/0
	, insert/1
	, lookup/2
]).

