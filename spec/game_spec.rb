require "game"

describe Game do

  subject { Game.new(stdout_mock, stdin_mock)}
  let(:stdout_mock) { double() }
  let(:stdin_mock) { double() }

  context "#prompt" do
    it "It prompts the user to select a weapon" do
      # arrange/assert
      allow(stdout_mock).to receive(:write) { "Choose your weapon: r/p/s\n" }
      # act
      subject.prompt
    end
  end

  context "#get_input" do
    it "It takes input from the user" do
      # arrange
      allow(stdin_mock).to receive(:read).and_return "r"
      # assert
      expect(subject.get_input).to eq("r")
    end
  end

  context "#pc_move" do
    # arrange
    before { srand(0) }
    it "It receives a random choice from the computer" do
      # assert
      expect(subject.pc_move).to eq('r')
    end
  end

  context "#tell_winner" do
    # arrange
      before { srand(1) }
    it "It tells who wins" do
      # act
      allow(stdin_mock).to receive(:read).and_return "r"
      subject.get_input
      subject.pc_move
      # assert
      expect(subject.tell_winner).to eq('You lost')
    end
  end

end
