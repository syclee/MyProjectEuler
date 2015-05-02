
// naive implementation
var count = 0;
var numbers = new Array();
for(var i = 3; i < 1000; i++)
{
	if( i % 3 === 0 ||
	    i % 5 === 0 )
	{		
		numbers[count++] = i;
	}
}

// found all numbers we need, now sum them
var sum = 0;
for(var j = 0; j < count; j++)
{	
	sum += numbers[j];
}

$(document).ready(function () {
	$('div').append(sum);
});