<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>LAB_8 Bài_3 Fpoly WEB1043</title>
    <style>
        #seek-bar {
            width: 100%;
            margin: 0 10px;
        }

        .music-player-controls {
            padding: 0.5rem;
            background-color: #f8f9fa;
            color: #343a40;
            border-top: 1px solid #dee2e6;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        .control-section,
        .time-info,
        .volume-section,
        .favorite-section {
            display: flex;
            align-items: center;
            flex-grow: 1;
        }

        .control-button {
            background: none;
            border: none;
            cursor: pointer;
        }

        .control-button i {
            font-size: 1.2rem;
        }

        .mix-buttons i,
        .icon-clickable {
            cursor: pointer;
        }

        .time-info {
            display: flex;
            align-items: center;
        }

        .time-text {
            margin: 0 0.3rem;
        }

        .seek-bar {
            width: 100%;
        }

        .volume-section {
            display: flex;
            align-items: center;
            flex: 1;
        }

        .volume-slider {
            width: 70px;
        }

        .song-info {
            align-items: center;
            text-align: center;
        }

        .song-info img {
            width: 60px;
            margin-right: 10px;
        }

        .favorite-section i {
            font-size: 1.5rem;
        }

        #player-container {
            position: fixed;
            bottom: 0;
            width: 100%;
            z-index: 1000;
        }

        .repeat-button {
            font-size: 1.5rem;
        }
    </style>
</head>

<body>
    <div id="container" var="${item}" items="${items}">
        <div id="player-container">
            <audio id="myplayer" autoplay="autoplay">
                <source src="/views/video/${item.file_midi_beat}" type="audio/mp3" />
            </audio>
            <div id="controls" class="music-player-controls">
                <div class="control-section d-flex align-items-center">
                    <div class="song-info d-flex align-items-center col-3">
                        <div class="album-art">
                            <c:if test="${not empty item}">
                                <img src="/views/anh/${item.hinh_anh}" width="80px" alt="Album Art">
                            </c:if>
                        </div>
                        <div class="song-details">
                            <p class="title mb-0">${item.tieu_de} - ${item.nguoi_tao.ho} ${item.nguoi_tao.ten}</p>
                        </div>
                        <div class="favorite-section d-flex justify-content-end">
                            <i class="bi bi-heart icon-clickable px-3" onclick="changeHeart(this)"></i>
                            <i class="bi bi-heart-fill icon-clickable" style="display: none;" onclick="changeHeart(this)"></i>
                        </div>
                    </div>
                    <div class="control-container col-6">
                        <div class="control-buttons d-flex align-items-center justify-content-center">
                            <button class="control-button"><i class="bi bi-skip-start-fill fs-2"></i></button>
                            
                            <button id="play-pause-button" class="control-button">
                                <i class="bi bi-play-fill icon-clickable fs-2"></i>
                            </button>
                            
                            <button class="control-button"><i class="bi bi-skip-end-fill fs-2"></i></button>
                            
                            <i id="repeat-button" class="bi bi-repeat fs-2 icon-clickable repeat-button" onclick="toggleRepeat()" ondblclick="toggleRepeat()"></i>
                        </div>
                        <div id="time-info" class="time-info d-flex align-items-center justify-content-center">
                            <span id="current-time" class="time-text"></span>
                            <input id="seek-bar" class="seek-bar" type="range" value="0" min="0" max="100" step="0.1">
                            <span id="duration" class="time-text"></span>
                        </div>
                    </div>
                    <div class="volume-control d-flex align-items-center justify-content-end col-3">
                        <i class="bi bi-volume-up-fill fs-2 icon-clickable" onclick="toggleMute()"></i>
                        <i class="bi bi-volume-down-fill fs-2 icon-clickable" style="display: none;" onclick="toggleMute()"></i>
                        <i class="bi bi-volume-mute-fill fs-2 icon-clickable" style="display: none;" onclick="toggleMute()"></i>
                        <input type="range" id="volumeSlider" class="volume-slider" min="0" max="100" value="100" oninput="updateVolume(this.value)">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    const audioPlayer = document.getElementById('myplayer');
    const repeatButton = document.getElementById('repeat-button');
    let isRepeatMode = false;

    // Danh sách các bài hát
    const playlist = [
        "/views/video/song1.mp3",
        "/views/video/song2.mp3",
        "/views/video/song3.mp3"
    ];

    // Chỉ số của bài hát hiện tại
    let currentSongIndex = 0;

    // Cập nhật bài hát hiện tại
    function updateSong() {
        audioPlayer.src = playlist[currentSongIndex];
        audioPlayer.play();
        document.querySelector('#play-pause-button i').classList.remove('bi-play-fill');
        document.querySelector('#play-pause-button i').classList.add('bi-pause-fill');
    }

    // Play/Pause button functionality
    document.getElementById('play-pause-button').addEventListener('click', function () {
        if (audioPlayer.paused) {
            audioPlayer.play();
            this.querySelector('i').classList.remove('bi-play-fill');
            this.querySelector('i').classList.add('bi-pause-fill');
        } else {
            audioPlayer.pause();
            this.querySelector('i').classList.remove('bi-pause-fill');
            this.querySelector('i').classList.add('bi-play-fill');
        }
    });

    // Skip to start button functionality (Previous Song)
    document.querySelector('.bi-skip-start-fill').addEventListener('click', function () {
        if (currentSongIndex > 0) {
            currentSongIndex--;
            updateSong();
        }
    });

    // Skip to end button functionality (Next Song)
    document.querySelector('.bi-skip-end-fill').addEventListener('click', function () {
        if (currentSongIndex < playlist.length - 1) {
            currentSongIndex++;
            updateSong();
        }
    });

    // Update the current time and duration
    audioPlayer.addEventListener('timeupdate', function () {
        const currentTime = Math.floor(audioPlayer.currentTime);
        const duration = Math.floor(audioPlayer.duration);
        document.getElementById('current-time').textContent = formatTime(currentTime);
        document.getElementById('duration').textContent = formatTime(duration);
        document.getElementById('seek-bar').value = (audioPlayer.currentTime / audioPlayer.duration) * 100;
    });

    // Seek bar functionality
    document.getElementById('seek-bar').addEventListener('input', function () {
        audioPlayer.currentTime = (this.value / 100) * audioPlayer.duration;
    });

    // Volume slider functionality
    function updateVolume(volume) {
        audioPlayer.volume = volume / 100;
    }

    // Mute/Unmute functionality
    function toggleMute() {
        audioPlayer.muted = !audioPlayer.muted;
        document.querySelectorAll('.bi-volume-up-fill, .bi-volume-down-fill, .bi-volume-mute-fill').forEach(icon => {
            icon.style.display = 'none';
        });
        if (audioPlayer.muted) {
            document.querySelector('.bi-volume-mute-fill').style.display = 'inline';
        } else if (audioPlayer.volume === 0) {
            document.querySelector('.bi-volume-down-fill').style.display = 'inline';
        } else {
            document.querySelector('.bi-volume-up-fill').style.display = 'inline';
        }
    }

    // Toggle Repeat mode
    function toggleRepeat() {
        isRepeatMode = !isRepeatMode;
        repeatButton.classList.toggle('bi-repeat', !isRepeatMode);
        repeatButton.classList.toggle('bi-repeat-1', isRepeatMode);
    }

    // Handle end of track event
    audioPlayer.addEventListener('ended', function () {
        if (isRepeatMode) {
            audioPlayer.currentTime = 0;
            audioPlayer.play();
        } else if (currentSongIndex < playlist.length - 1) {
            currentSongIndex++;
            updateSong();
        }
    });

    // Format time in mm:ss
    function formatTime(seconds) {
        const minutes = Math.floor(seconds / 60);
        const remainingSeconds = seconds % 60;
        return `${minutes}:${remainingSeconds < 10 ? '0' : ''}${remainingSeconds}`;
    }
</script>

</body>

</html>
