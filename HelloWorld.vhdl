--Hello World in VHDL

ENTITY helloworld IS
END helloworld;

ARCHITECTURE hw OF helloworld IS

BEGIN

ASSERT FALSE
REPORT "HELLO, WORLD!"
SEVERITY NOTE;

END hw;
