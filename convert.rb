#!/usr/bin/env ruby

require 'active_attr'

class City
  include ActiveAttr::Model

  %i[id name state location population].each {|attr| attribute attr }

  alias_attribute :_id, :id
  alias_attribute :city, :name
  alias_attribute :pop, :population

  def loc= loglat
    self.location = loglat.join ','
  end

  def to_xml options={}
    options[:builder].city attributes
  end
end

class ParsedList < Array
  def self.from_json filename, klass
    new open(filename).collect {|line| klass.new.from_json line }
  end

  def to_xml
    super skip_types: true
  end
end

class CityList < ParsedList
  def self.from_json filename
    super filename, City
  end
end

puts CityList.from_json('input.json').to_xml
