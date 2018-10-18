# Hello Word written in Limbo

implement Command;

include “sys.m”;
include “draw.m”;
include “sh.m”;

sys: Sys;

init(nil: ref Draw->Context, nil: list of string) {
  sys = load Sys Sys-PATH;
  sys->print(“Hello Word!\n”);
}
