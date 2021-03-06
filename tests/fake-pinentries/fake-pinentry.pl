#!/usr/bin/perl -w
# Use this for your test suites when a perl interpreter is available.
#
# The encrypted keys in your test suite that you expect to work must
# be locked with a passphrase of "passphrase"
#
# Author: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
#
# License: Creative Commons Zero ("Public Domain Dedication") --
# Anyone may reuse it, modify it, redistribute it for any purpose.

use strict;
use warnings;

# turn off buffering
$| = 1;

print "OK This is only for test suites, and should never be used in production\n";
while (<STDIN>) {
  chomp;
  next if (/^$/);
  next if (/^#/);
  print ("D passphrase\n") if (/^getpin/i);
  print "OK\n";
  exit if (/^bye/i);
}
1;
