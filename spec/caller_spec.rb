RSpec.describe Caller do
  it 'has a version number' do
    expect(Caller::VERSION).not_to be nil
  end

  it 'should initialize instance and pass arguments to it' do
    expect(Sample.call('text')).to eq('text')
  end
end
