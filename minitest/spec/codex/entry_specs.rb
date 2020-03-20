require_relative '../spec_helper'

describe Codex::Entry do
  before do
    @id = 4242
    @date = DateTime.now
    @content = 'Tu es un gros totoro !'
    @param = { id: @id, date: @date, content: @content }
    @subject = Codex::Entry.new(**@param)
  end

  describe '#date' do
    it 'returns the right date' do
      _(@subject.date).must_equal @date
    end
  end

  describe '#content' do
    it 'returns the right content' do
      _(@subject.content).must_equal @content
    end
  end
end

