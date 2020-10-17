/*import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

MediaControl playControl = MediaControl(
    androidIcon: 'drawable/play_arrow',
    label: 'Play',
    action: MediaAction.play);
MediaControl pauseControl = MediaControl(
    androidIcon: 'drawable/pause_arrow',
    label: 'Pause',
    action: MediaAction.pause);
MediaControl skiptoNextControl = MediaControl(
    androidIcon: 'drawable/skip_to_next',
    label: 'Next',
    action: MediaAction.skipToNext);
MediaControl skiptoPreviousControl = MediaControl(
    androidIcon: 'drawable/skip_to_previous',
    label: 'Previous',
    action: MediaAction.skipToPrevious);
MediaControl stopControl = MediaControl(
    androidIcon: 'drawable/stop', label: 'Stop', action: MediaAction.stop);

class AudioPlayerTask extends BackgroundAudioTask {
  final _queue = <MediaItem>[
    MediaItem(
        id: "https:",
        album: "Science",
        title: "a loram ipsom",
        artist: "sujatha",
        duration: Duration(milliseconds: 5739820),
        artUri: "https://sdadjasda .jpg"),
    MediaItem(
        id: "https:",
        album: "Science",
        title: "a loram ipsom",
        artist: "sujatha",
        duration: Duration(milliseconds: 5739820),
        artUri: "https://sdadjasda .jpg"),
  ];
  


int _queueIndex = -1;
AudioPlayer _audioPlayer = AudioPlayer();
AudioProcessingState _audioProcessingState;
bool _playing;

bool get hasNext => _queueIndex + 1 < _queue.length;
bool get hasPrevious => _queueIndex > 0;

MediaItem get mediaItem => _queue[_queueIndex];

@override
void onStart(Map<String,>params){
  super.onStart(params);
}

@override
void onPlay(){
  super.onPlay();
}
}*/