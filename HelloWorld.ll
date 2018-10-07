@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00"

declare i32 @puts(i8* nocapture) nounwind

define i32 @main() { ; i32()*
    %cast210 = getelementptr [13 x i8],[13 x i8]* @.str, i64 0, i64 0

    call i32 @puts(i8* %cast210)
    ret i32 0
}

!0 = !{i32 42, null, !"string"}
!foo = !{!0}