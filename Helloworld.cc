#include <octave/oct.h>                                           									
DEFUN_DLD(hello, argv, , “Usage: hello()"){			        
  octave_value_list retval;					        
  octave_stdout << "Hello World\n"; 				
  return retval;							
}									
