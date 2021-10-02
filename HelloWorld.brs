' Hello world in BrightScript

sub Main()
port = CreateObject("roMessagePort")
screen = CreateObject("roTextScreen")
screen.SetText("Hello World")
screen.setMessagePort(port)
screen.Show()
while true
  msg = wait(0, port)
  if(msg.isScreenClosed())
    return -1
  end if
end while
end sub
