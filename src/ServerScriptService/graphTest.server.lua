
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GraphModule = require(ReplicatedStorage:WaitForChild('GraphModule'))

local AxisNDataSet = GraphModule.CastToAxisNDataSet( {
	{ 0, 0 },
	{ 1, 1 },
	{ 2, 2 },
	{ 3, 3 },
	{ 4, 4 },
	{ 5, 5 },
	{ 6, 6 },
	{ 6, 6 },
} )

