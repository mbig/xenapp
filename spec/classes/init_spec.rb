require 'spec_helper'
describe 'citrixVDA' do

  context 'with defaults for all parameters' do
    it { should contain_class('citrixVDA') }
  end
end
