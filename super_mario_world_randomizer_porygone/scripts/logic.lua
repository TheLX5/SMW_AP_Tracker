
function BowserCost()
	local currentTokens = Tracker:ProviderCountForCode("boss_tokens")
	local requiredTokens = Tracker:ProviderCountForCode("bosses_required")
	return (currentTokens >= requiredTokens)
end

function LevelVisited(level_id)
	local show_all_levels = Tracker:FindObjectForCode("show_all_levels")
	if show_all_levels.Active then
		return true
	end

	local level_visit = Tracker:FindObjectForCode("level_visit_" .. level_id)
	return level_visit.Active
end
