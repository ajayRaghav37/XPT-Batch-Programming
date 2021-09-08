mkdir %2
ROBOCOPY %1 %2 /E /COPYALL /R:0 /XO /XJ /NS /NC /NFL /NDL /NP /NJH /NJS
attrib -h -r -s -a %2