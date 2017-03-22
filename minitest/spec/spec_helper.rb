$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'codex'

require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new # spec-like progress

