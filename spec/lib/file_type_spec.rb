require 'rails_helper'

RSpec.describe FileType do
  describe '#initialize' do
    it 'errors when initialized with nil' do
      expect { FileType.new(nil) }.to raise_error StandardError
    end

    it 'errors when initialized with an empty string' do
      expect { FileType.new("") }.to raise_error StandardError
    end

    it "errors when initialilzed with a nonexistent file path" do
      expect { FileType.new("absolutely.not.a.file") }.to raise_error StandardError
    end

    it 'provides a mime-type-like description of a file' do
      expect(FileType.new("Gemfile")).to eq "text/plain; charset=us-ascii"
    end
  end
end
