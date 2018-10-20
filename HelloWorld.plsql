set serveroutput on

begin
  dbms_output.enable(10000);
  dbms_output.put_line('Hello, World!');
end;
