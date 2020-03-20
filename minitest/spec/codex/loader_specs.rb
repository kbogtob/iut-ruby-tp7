require 'spec_helper'

describe Codex::Loader do
  before do
    @path = 'minitest/etc/sample_journal.codex'
    @subject = Codex::Loader.new(@path)
  end

  def subject
    @subject
  end

  describe '#entries' do
    before do
      @entries = subject.entries
    end

    it 'has the right number of entries' do
      _(@entries.size).must_equal 3
      @entries.each do |entry|
        _(entry).must_be_kind_of(Codex::Entry)
      end
    end
  end

end
