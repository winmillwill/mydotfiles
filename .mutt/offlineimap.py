#!/usr/bin/python
import re, os

def get_gpg_pass(account=None):
  s = "%s ([^ ]*)\n$" % (account)
  p = re.compile(s)
  authinfo = os.popen("gpg -q -d ~/.authinfo.gpg").read()
  print authinfo
  return p.search(authinfo).group(1)
