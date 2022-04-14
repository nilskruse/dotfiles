#! /bin/sh


string=$(pactl list sinks)

while [[ $string != *"null_sink_for_combined_sink"* ]]; do
  pacmd load-module module-null-sink sink_name=null_sink_for_combined_sink sink_properties=device.description="\"Null\ sink\ for\ combined\ sink\""
  string=$(pactl list sinks)
done

while [[ $string != *"combined_sink_for_obs"* ]]; do
  pacmd load-module module-combine-sink sink_name=combined_sink_for_obs  slaves=null_sink_for_combined_sink,alsa_output.usb-GuangZhou_FiiO_Electronics_Co._Ltd_FiiO_Q1_FA145408-00.analog-stereo sink_properties=device.description="\"Combined\ sink\ for\ OBS\""
  string=$(pactl list sinks)
done

#pidof obs > /dev/null || { obs --startreplaybuffer > /dev/null 2>&1 & } &


