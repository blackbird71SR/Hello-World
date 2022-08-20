<?hh

namespace Hack\UserDocumentation\Quickstart\Examples\First;

class Box<T> {
  public function __construct(private T $elem) {
  }

  public function get(): T {
    return $this->elem;
  }
}

function get_int(): int {
  return 42;
}

function use_box(): void {
  $box = new Box(get_int());
  $i = $box->get();
  \var_dump($i);
}

use_box();