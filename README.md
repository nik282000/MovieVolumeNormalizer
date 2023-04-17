normalizer.sh will add a new audio track to a video file that contains the original sound track but with normalized volume.

This takes away some of the audio quality but makes casual viewing much more enjoyable.

I have no idea what happens if your video already has multiple audio tracks available.

Surround sound is mixed down to stereo.

Requires ffmpeg.

useage: normalizer.sh video.file

The lower, normalized, track has a smaller range in volume between the quietest and loudest sections compared to the original.

![example](example.png)
