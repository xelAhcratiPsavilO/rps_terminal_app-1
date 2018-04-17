require "game"

describe Game do

  subject { Game.new(stdout_mock, stdin_mock, selector_mock)}
  let(:stdout_mock) { double() }
  let(:stdin_mock) { double() }
  let(:selector_mock) { double() }

  context "#prompt" do
    it "It prompts the user to select a weapon" do
      # arrange/assert
      allow(stdout_mock).to receive(:write) { "Choose your weapon: r/p/s\n" }

      # act
      subject.prompt
    end
  end

  context "#select" do
    it "It takes input from the user" do
      # arrange
      allow(stdin_mock).to receive(:read).and_return "r"
      # act
      expect(subject.select).to eq(:rock)
    end
  end

  context "#choose" do
    it "It selects a random weapom for the computer" do
      # arrange
      allow(selector_mock).to receive(:select).and_return :paper

      # act/assert
      expect(subject.choose).to eq(:paper)
    end
  end

end
