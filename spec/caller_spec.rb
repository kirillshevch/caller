RSpec.describe Caller do
  it 'has a version number' do
    expect(Caller::VERSION).not_to be nil
  end

  it 'should initialize instance and pass arguments to it' do
    expect(Sample.call('text')).to eq('text')
  end

  describe 'caller_for' do
    it 'should initialize instance with custom callable method' do
      expect(SampleCallerFor.define('text')).to eq('text')
    end
  end
end
