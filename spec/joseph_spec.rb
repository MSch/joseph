require 'joseph'

describe Joseph do
  describe 'adding it to a class' do
    class A
      include Joseph
    end

    let(:a) { A.new }

    it 'includes Joseph' do
      a.configure do |config|
        config.hans = 'herbert'
      end
      a.hans.should == 'herbert'
    end
  end

  describe 'adding it to a module' do
    module M
      include Joseph
    end

    it 'includes Joseph' do
      M.configure do |config|
        config.hans = 'herbert'
      end
      M.hans.should == 'herbert'
    end
  end

end
