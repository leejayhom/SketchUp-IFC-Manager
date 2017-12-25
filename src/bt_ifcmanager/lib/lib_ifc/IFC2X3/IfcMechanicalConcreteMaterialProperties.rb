#  IfcMechanicalConcreteMaterialProperties.rb
#
#  Copyright 2017 Jan Brouwer <jan@brewsky.nl>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
#

require_relative(File.join('..', 'step.rb'))
require_relative('IfcMechanicalMaterialProperties.rb')

module BimTools
 module IFC2X3
  class IfcMechanicalConcreteMaterialProperties < IfcMechanicalMaterialProperties
    attr_accessor :ifc_id, :compressivestrength, :maxaggregatesize, :admixturesdescription, :workability, :protectiveporeratio, :waterimpermeability
    include Step 
    def initialize( ifc_model, sketchup=nil, *args ) 
      @ifc_id = ifc_model.add( self ) unless self.class < IfcMechanicalConcreteMaterialProperties
      super
    end # def initialize 
    def properties()
      return ["Material", "DynamicViscosity", "YoungModulus", "ShearModulus", "PoissonRatio", "ThermalExpansionCoefficient", "CompressiveStrength", "MaxAggregateSize", "AdmixturesDescription", "Workability", "ProtectivePoreRatio", "WaterImpermeability"]
    end # def properties
  end # class IfcMechanicalConcreteMaterialProperties
 end # module IFC2X3
end # module BimTools
