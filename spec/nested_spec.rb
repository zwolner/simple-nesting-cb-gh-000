def __
  raise "__ should be replaced with a value or expression to make the test pass."
end

describe "Nested Data Structures" do

  context 'arrays' do
    # Have we read about let yet?
    # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

    let(:tic_tac_toe_board){[
      ["A1", "A2", "A3"],
      ["B1", "B2", "B3"],
      ["C1", "C2", "C3"]
    ]}

    it 'can read the first level of nesting' do
      # Access the corresponding data from the array above by filling in the 
      # array accessors below. For example, you would access the middle square
      # in the following manner:
      middle = tic_tac_toe_board[1][1]

      # Replace the __ with the correct accessors.
      first_row = __
      second_row = __
      third_row = __

      expect(first_row).to eq(["A1", "A2", "A3"])
      expect(second_row).to eq(["B1", "B2", "B3"])
      expect(third_row).to eq(["C1", "C2", "C3"])
    end

    it 'can read second level of nesting' do
      bottom_middle = __
      top_left_corner = __

      expect(bottom_middle).to eq("C2")
      expect(top_left_corner).to eq("A1")
    end

    it 'can write to the second level of nesting' do
      # Replace the __ with the correct accessors.
      top_right = __
      middle_right = __
      bottom_right = __
      
      # Place "X"s in the positions corresponding to a win
      # on the right column.
      # To place an X in the middle you would:
      tic_tac_toe_board[1][1] = "X" 

      # Make your moves here


      expect(top_right).to eq("X")
      expect(middle_right).to eq("X")
      expect(bottom_right).to eq("X")
    end
  end

  context 'hashes' do
    let(:profiles){
      {
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
      }
    }

    it 'can access top level data' do
      # Replace the __ with the correct accessors
      hopper = __ # What key in profile would you use to get Hopper's info?

      expect(hopper).to eq({
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
      })
    end

    it 'can access second level data' do
      alan_kay_is_known_for = __ # What combination of keys would you use?

      expect(alan_kay_is_known_for).to eq("Object Orientation")
    end

    it 'can access data on the third level' do
      dennis_ritchies_language = __

      expect(dennis_ritchies_language).to eq("C")
    end

    it 'can write data to the top level' do
      yukihiro_matsumoto = {
        :known_for => "Ruby",
        :languages => "LISP, C"
      }

      # Add that data to the main profiles hash so that it exists
      # within profiles as a key corresponding to the programmers
      # name.
      # You're going to want something like profiles =

      expect(profiles.keys).to include(:yukihiro_matsumoto)
    end

    it 'can write data to the second level' do
      # Change what alan kay is known for to "GUI"

      expect(profiles[:alan_kay][:known_for]).to eq("GUI")
    end

    it 'can add data to the third level' do
      # Add Assembly to Dennis Ritchie's Languages

      expect(profiles[:dennis_ritchie][:languages]).to include("Assembly")
    end
  end

end
