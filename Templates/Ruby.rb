#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-

###############################################################################
# Author:
#
# Description:
#
# Usages:
#
###############################################################################

begin
  if RbConfig::CONFIG["ruby_version"].to_s.to_f < 1.9
    require 'rubygems'
  end
rescue LoadError
  warn "Failed to load rubygems for ruby interpreter version " + \
    RbConfig::CONFIG["ruby_version"]
end

\$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'optparse'

# An example function that returns anything passed to it
#
# == Parameters:
# bar::
#    Any kind of variable
#
# == Returns:
# The variable passed to this function
def foo(bar)
  bar
end
