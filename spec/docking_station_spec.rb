#require 'docking_station'
require_relative '../lib/docking_station.rb'

describe DockingStation do

    it 'releases a bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike) 
    end

    it 'gets a bike and is working' do
      docking_station = DockingStation.new
      bike = docking_station.release_bike
      expect(bike.working?).to eq(true)
    end

    it 'docks something' do
      bike = Bike.new
      docking_station = DockingStation.new
      expect(docking_station.dock(bike)).to eq bike
    end

    it 'retrieve a stored bike' do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:bike)
    end

    it 'returns docked bikes' do
      bike = Bike.new
      docking_station = DockingStation.new

      docking_station.dock(bike)

      expect(docking_station.bike).to eq bike
    end
end