#!/usr/bin/env bash

# *****************************************************************************

bash_cell D1 << END_CELL
# print 'hello world' using echo and two unquoted arguments
echo hello world
echo hello   world
echo   hello   world
END_CELL

bash_cell D2 << END_CELL
# print '  hello  world' using echo and a single quoted argument
echo '  hello  world'
echo "  hello  world"
echo '  ''hello''  ''world'
echo "  ""hello""  ""world"
echo '  hello  world'
echo '  hello  world'
END_CELL

bash_cell D3 << END_CELL
# print '  hello  world' using echo and two quoted arguments
echo '  hello' ' world'
echo "  hello" " world"
echo '  hello'    ' world'
echo "  hello"    " world"
END_CELL

