require 'find_coordinates'

describe FindCoordinates do
  it 'can find 0,0' do
    input = <<-INPUT
+==========+
|X*********|
|**********|
|**********|
|**********|
|**********|
+==========+
    INPUT

    expect(FindCoordinates.call(input)).to eq [0, 0]
  end

  it 'can find a map with x and y coordinates' do
    input = <<-INPUT
+======+
|******|
|******|
|*X****|
+======+
    INPUT

    expect(FindCoordinates.call(input)).to eq [1, -2]
  end

  it 'can find coordinates in a big map' do
    input = <<-INPUT
+===================================+
|***********************************|
|***********************************|
|***********************************|
|******X****************************|
|***********************************|
|***********************************|
|***********************************|
|***********************************|
+===================================+
INPUT

    expect(FindCoordinates.call(input)).to eq [6, -3]
  end
end