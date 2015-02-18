package.path = package.path .. ';..\\?.lua'
vector = require"vector"

local testPass = true

-- Test vectors
testVector = {{1,2,3},
              {-1,-2,-3},
			  {15.3, -62.1, 77}}

local function runTest (x,y,z)
  local v1 = vector.new(x,y,z)
  
  -- Test magnitude function
  mag = v1:magnitude();
  if (math.abs(mag - math.sqrt(x^2+y^2+z^2)) > 0.0000001) then
	print ("FAIL: magnitude()")
	return false
  end
  
  -- Test asArray function
  vArray = v1:asArray()
  if ((vArray[X] ~= x) or (vArray[Y] ~= y) or (vArray[Z] ~= z)) then
 	print ("FAIL: asArray(): expected", x, y, z, "but got", vArray[X],vArray[Y], vArray[Z] )
	return false
  end
 
  -- Test asList function
  vX,vY,vZ = v1:asList()
  if ((vX ~= x) or (vY ~= y) or (vZ ~= z)) then
 	print ("FAIL: asList(): expected", x, y, z, "but got", vX, vY, vZ)
	return false
  end
end

-- Test Case #1
for i, test in ipairs(testVector) do
  if (runTest(testVector[i][1],testVector[i][2],testVector[i][3]) == false) then
    testPass = false
  end
end
if(testPass) then
  print ("PASS")
end
