describe 'run the script' do
  let(:script_root) { File.dirname(__FILE__) + '/../' }

  it 'should return a success code' do
    system('bundle')
    expect( system("ruby #{script_root}run.rb")).to be(true)
  end
end
