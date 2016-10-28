require 'spec_helper'

describe EntityRequest do
  subject do
    described_class.new(user: 'user', project: 'some project')
  end

  describe 'methods created' do
    it 'defines accessible attributes' do
      expect(subject.user).to eq 'user'
      expect(subject.project).to eq 'some project'
    end

    it 'raises error when attribute is not defined' do
      expect { subject.some_method }.to raise_error NoMethodError
    end
  end

  describe '#merge!' do
    before { subject.merge!(build: 'some build') }

    it 'appends parameters' do
      expect(subject.build).to eq 'some build'
    end
  end
end
