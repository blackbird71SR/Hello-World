entity hello_world is
end;

architecture hello_world of hello_world is
begin
process is
  begin
    report "Hello World!";
    wait;
  end process;
end hello_world;
