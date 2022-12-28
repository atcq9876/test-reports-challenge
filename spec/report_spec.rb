require 'report'

RSpec.describe Report do
  describe "#create_report" do
    context "when given an empty string" do
      it "raises error" do
        report = Report.new("")
        expect{ report.create_report }.to raise_error "No results given"
      end
    end

    context "when given a non-string value (int)" do
      it "raises error" do
        report = Report.new(567)
        expect{ report.create_report }.to raise_error "Input must be a string value"
      end
    end

    context "when given a non-string value (nil)" do
      it "raises error" do
        report = Report.new(nil)
        expect{ report.create_report }.to raise_error "Input must be a string value"
      end
    end

    context "when given 'Green' string" do
      it "returns 'Green: 1'" do
        report = Report.new("Green")
        expect(report.create_report).to eq "Green: 1"
      end
    end

    context "when given 'Amber' string" do
      it "returns 'Amber: 1'" do
        report = Report.new("Amber")
        expect(report.create_report).to eq "Amber: 1"
      end
    end

    context "when given 'Red' string" do
      it "returns 'Red: 1'" do
        report = Report.new("Red")
        expect(report.create_report).to eq "Red: 1"
      end
    end

    context "when given lowercase 'green' string" do
      it "returns 'Green: 1'" do
        report = Report.new("green")
        expect(report.create_report).to eq "Green: 1"
      end
    end

    context "when given lowercase 'amber' string" do
      it "returns 'Amber: 1'" do
        report = Report.new("amber")
        expect(report.create_report).to eq "Amber: 1"
      end
    end

    context "when given lowercase 'red' string" do
      it "returns 'Red: 1'" do
        report = Report.new("red")
        expect(report.create_report).to eq "Red: 1"
      end
    end

    context "when given a string in all caps" do
      it "returns the correct cased output" do
        report = Report.new("RED, GREEN, AMBER")
        expect(report.create_report).to eq "Green: 1\nAmber: 1\nRed: 1"
      end
    end

    context "when given a value that is not green, amber or red" do
      it "returns 'Uncounted: 1" do
        report = Report.new("test")
        expect(report.create_report).to eq "Uncounted: 1"
      end
    end

    context "when given a string with two green values" do
      it "returns correct output" do
        report = Report.new("Green, Green")
        expect(report.create_report).to eq "Green: 2"
      end
    end

    context "when given a string with two amber values" do
      it "returns correct output" do
        report = Report.new("Amber, Amber")
        expect(report.create_report).to eq "Amber: 2"
      end
    end

    context "when given a string with two different values (green and amber)" do
      it "returns correct output" do
        report = Report.new("Green, Amber")
        expect(report.create_report).to eq "Green: 1\nAmber: 1"
      end
    end

    context "when given a string with two different values (green and red)" do
      it "returns correct output" do
        report = Report.new("Green, Red")
        expect(report.create_report).to eq "Green: 1\nRed: 1"
      end
    end

    context "when given a string with two different values (amber and red)" do
      it "returns correct output" do
        report = Report.new("Amber, Red")
        expect(report.create_report).to eq "Amber: 1\nRed: 1"
      end
    end

    context "when given a string with green, amber and red" do
      it "returns correct output" do
        report = Report.new("Green, Amber, Red")
        expect(report.create_report).to eq "Green: 1\nAmber: 1\nRed: 1"
      end
    end

    context "when given a string with green, amber, red and an invalid value" do
      it "returns correct output" do
        report = Report.new("Green, Amber, Red, invalid")
        expect(report.create_report).to eq "Green: 1\nAmber: 1\nRed: 1\nUncounted: 1"
      end
    end

    context "when given a string with multiple green, amber, red and invalid values" do
      it "returns correct output" do
        report = Report.new("Green, Amber, Red, invalid, amber, red, GREEN, TEST")
        expect(report.create_report).to eq "Green: 2\nAmber: 2\nRed: 2\nUncounted: 2"
      end
    end

    context "when given a comma-separated string with no spaces" do
      it "returns correct output" do
        report = Report.new("Green,Amber,red,blah")
        expect(report.create_report).to eq "Green: 1\nAmber: 1\nRed: 1\nUncounted: 1"
      end
    end

    context "when given a comma-separated string with special characters" do
      it "returns correct output" do
        report = Report.new("Green, 89!Amber, red812: , blah")
        expect(report.create_report).to eq "Green: 1\nAmber: 1\nRed: 1\nUncounted: 1"
      end
    end
  end
end