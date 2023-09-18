
Hooks:PostHook(PlayerStandard, '_calculate_standard_variables', 'checking',
function(self, data)
	if self._in_air_velocity and not self._state_data.on_ladder then
		self._unit:set_velocity(self._in_air_velocity)

		self._in_air_velocity = nil
	end
end)


Hooks:PostHook(PlayerStandard, 'update_check_actions_paused', 'checking2',
function(self, data)
	self:_update_check_actions(Application:time(), 0.1, true)

	self._in_air_velocity = self._unit:sampled_velocity()
end)


