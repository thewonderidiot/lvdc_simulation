# Script Runner test script
cmd("SATURN EXAMPLE")
wait_check("SATURN STATUS BOOL == 'FALSE'", 5)
