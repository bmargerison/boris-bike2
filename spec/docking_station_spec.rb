require 'docking_station'

describe DockingStation do
    it 'releases a bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to{docking_station.release_bike}
    end

    it { is_expected.to respond_to{docking_station.release_bike} }
end