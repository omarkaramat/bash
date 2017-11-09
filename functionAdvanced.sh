#!/bin/bash

#function_name()
#{
# commands
#}

#function_name() { command; commands2; command3; }

# run -> function_name par1 par2 par3

function1 () 
{
	echo "call \"f2\" from \"f1\"."
	function2
}

function2 ()
{
	echo "this is \"f2\""
}

function1 
