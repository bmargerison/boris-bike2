#require 'docking_station'
require_relative '../lib/docking_station.rb'

describe DockingStation do
    it 'releases a bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to{docking_station.release_bike}
    end

    it 'gets a bike and is working' do
      docking_station = DockingStation.new
      bike = docking_station.release_bike
      expect(bike.working?).to eq(true)
    end
end