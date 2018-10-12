<?php

class Hello
{
  /* @var message Store message for later */
  public $message = "";

  /**
   * @param string $name
   * @return null
   */
  public function __construct($name)
  {
    $this->message = "Hello World! Sent by" . $name;
  }
  
  /* Get message! */
  public function getMessage()
  {
    return $this->message;
  }
  
}

$world = new Hello("SuperGrecko");
echo $world->getMessage();

?>
