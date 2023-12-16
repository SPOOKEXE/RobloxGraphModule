
local ERROR_MESSAGES = {
	VALUES_HOMOGENEOUS = 'The passed array is not homogeneous, the value at index %s/%s is not matching in length with all other values in the array.',
}

local function AssertHomogenousity( values )
	assert( typeof(values) == 'table', 'Passed values must be a table.' )
	local dataLength = nil
	for index, value in ipairs( values ) do
		assert( typeof(value) == 'table', 'Values value must be a table.' )
		if dataLength and #value ~= dataLength then
			assert( (not dataLength) or #value == dataLength, string.format( ERROR_MESSAGES.VALUES_HOMOGENEOUS, tostring(index), tostring(#values) ) )
		end
		dataLength = #value
	end
end

local AxisNDataSet = { ClassName = 'DataAxis2D' }

function AxisNDataSet.FromValues( values )

	AssertHomogenousity( values )

	return {
		Values = values,
	}

end

-- // Module // --
local Module = {}

Module.InternalFunctions = { AssertHomogenousity = AssertHomogenousity }
Module.AxisNDataSet = AxisNDataSet

function Module.CastToAxisNDataSet( values )
	return AxisNDataSet.FromValues( values )
end

return Module
