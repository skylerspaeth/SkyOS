-- CREDITS --
-- replay save handling: https://gist.github.com/snakecase/e816384a071cec31efbb4b9e429c108d
-- system call example: https://github.com/marklagendijk/obs-scene-execute-command-script/blob/master/scene_execute_command.lua
-- save sound effect: https://github.com/ntoff/obs_scripts/blob/master/OBS-Front-End-API-Feedback/obs-studio/data/obs-plugins/frontend-tools/scripts/front-end-feedback/replay_stop.mp3

obs = obslua
settings = {}

function script_description()
  return "Alert with sound and notification on replay buffer successful save"
end

function script_load(settings)
  obs.obs_frontend_add_event_callback(handle_event)
end

function handle_event(event)
  if event == obs.OBS_FRONTEND_EVENT_REPLAY_BUFFER_SAVED then
    handle_buffer_save()
  end
end

function handle_buffer_save()
  os.execute("notify-send 'OBS Replay Buffer' 'Successfully saved replay buffer.' --icon=video-display")
  os.execute("aplay '/opt/skyos/saved.wav'")
end
