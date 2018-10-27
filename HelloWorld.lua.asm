;LUA assembler available here https://github.com/UraYukimitsu/luadisassembly
;main(...)
{
        .params 0+
        .slots  2
        SECTION TEXT::
                1  :    GETTABUP        0 0 -1  ; "print"
                2  :    LOADK           1 -2    ; "Hello World"
                3  :    CALL            0 2 1
                4  :    RETURN          0 1
        ;constants (2) for main:
        SECTION CONST::
                1  :    "print"
                2  :    "Hello World"
        ;upvalues (1) for main:
        SECTION UPVALUES::
                0  :    1       0
}
