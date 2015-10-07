#!/bin/tclsh
# brief
# Schaltet nach vorgegebener Zeit einen Kanal Ein oder Aus oder �ndert einen Wert
# =============================================================
# von MaxWrestler 2012
# Update 2014 - Uwe Langhammer
#
# Aufruf zB.
# tclsh /usr/local/addons/cuxd/extra/timer.tcl BidCos-RF.IEQ0504341:1.STATE 1 10
# f�r Aktor IEQ0504341 Einschalten nach 10 Sekunden
# oder
# tclsh /usr/local/addons/cuxd/extra/timer.tcl BidCos-RF.IEQ1234567:1.ALL_LEDS 2863311530 60
# f�r alle LED�s der Statusanzeige nach 60 Sekunden auf gr�n.

load tclrega.so

if { $argc < 2 } {
  puts "USAGE: timer.tcl <interface.address:ch.DP> <STATE> \[<WAIT in X.XXs>\] \[<COMPARE>\] \[<ON_TIME>\]"
  exit 1
}
 
set address [lindex $argv 0]
set state [lindex $argv 1]
set wait_in_seconds [lindex $argv 2]
set check_value [lindex $argv 3]
set set_ontime [lindex $argv 4]

if {[string is double $wait_in_seconds] && ($wait_in_seconds > 0)} {
  puts "WAIT ${wait_in_seconds}s"
  set wait_in_1000s [expr $wait_in_seconds * 1000]
  after [expr int($wait_in_1000s)]
}

if {([string length $check_value] > 0) && ([expr int($check_value)] != 0)} {
  set cmd "if (dom.GetObject(\"$address\").Value() != $state)\{";
}

if {[string is double $set_ontime] && ($set_ontime > 0)} {
  puts "ON_TIME ${set_ontime}s"
  regsub -- {[^\.]+$} $address "ON_TIME" ontime
  append cmd "dom.GetObject(\"$ontime\").State(\"$set_ontime\");"
}
 
append cmd "dom.GetObject(\"$address\").State(\"$state\");"

if {([string length $check_value] > 0) && ([expr int($check_value)] != 0)} {
  append cmd "\}"
}

puts $cmd

rega_script $cmd

