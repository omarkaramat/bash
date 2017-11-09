#!/bin/bash

function1 ()
{
	function2()
        {
        	echo "this is nested function, order of function is important"
        }	

}
 
function1
function2
