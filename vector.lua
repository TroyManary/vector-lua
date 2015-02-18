-------------------------------------------------------------------------------
-- Vector
--
-- This file contains a lua class for a simple 3D Vector. 
-- 
-- @classmod vector
-- @author Troy Manary
--
-------------------------------------------------------------------------------
local vector = {}
vector.__index = vector

X=1
Y=2
Z=3

-------------------------------------------------------------------------------
-- Constructor
-- @function new
-- @param xIn x-coordinate for vector
-- @param yIn y-coordinate for vector
-- @param zIn z-coordinate for vector
-- @usage local velocity = vector.new(1.5, 3.3,-4)
-------------------------------------------------------------------------------
function vector.new(xIn, yIn, zIn)
  local self = setmetatable({}, vector)
  self.x = xIn or 0
  self.y = yIn or 0
  self.z = zIn or 0
 return self
end

-------------------------------------------------------------------------------
-- Calculates the magnitude of the vector
-- @function magnitude
-- @return magnitude of vector
-- @usage speed = velocity:magnitude() 
-------------------------------------------------------------------------------
function vector.magnitude(self)
  return (math.sqrt(self.x^2 + self.y^2 + self.z^2))
end

-------------------------------------------------------------------------------
-- Returns the vector as an array of [X, Y, Z]
-- @function asArray
-- @return vector array of [X, Y, Z]
-- @usage velocityArray = velocity:asArray() 
-------------------------------------------------------------------------------
function vector.asArray(self)
  return {self.x, self.y, self.z}
end

-------------------------------------------------------------------------------
-- Returns the vector as a list of X, Y, Z
-- @function asList
-- @return vector array of [X, Y, Z]
-- @usage vX,vY,vZ = velocity:asList() 
-------------------------------------------------------------------------------
function vector.asList(self)
  return self.x, self.y, self.z
end

return vector