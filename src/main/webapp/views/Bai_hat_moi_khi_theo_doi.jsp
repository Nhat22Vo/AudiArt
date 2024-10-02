   <%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<style>
.track-card {
    max-width: 800px;
    margin: 20px auto;
   
    padding: 10px; /* Adjusted for smaller size */
   
}

.track-card img {
    border-radius: 50%;
}
.track-details-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.track-card .track-details {
    display: flex;
    align-items: center;
}
.track-card .track-details img {
    width: 30px; /* Reduced size */
    height: 30px; /* Reduced size */
    margin-right: 10px; /* Reduced size */
}
.waveform-container {
    position: relative;
    width: 40%;
    height: 40px; /* Reduced size */
    background-color: #f0f0f0;
    display: flex;
    align-items: flex-end;
    overflow: hidden;
}
.waveform-bar {
    width: 1px; /* Reduced size */
    background: #333;
    margin-right: 0.5px; /* Reduced size */
    animation: bounce 1s infinite;
}
@keyframes bounce {
    0%, 100% {
        transform: scaleY(1);
    }
    50% {
        transform: scaleY(0.5);
    }
}
.duration {
    position: absolute;
    right: 5px; /* Reduced size */
    bottom: 5px; /* Reduced size */
    background: rgba(0, 0, 0, 0.7);
    color: white;
    padding: 1px 3px; /* Reduced size */
    border-radius: 5px;
    font-size: 10px; /* Reduced size */
}
.media img {
    width: 30px; /* Reduced size */
    height: 30px; /* Reduced size */
}
.media-body h5 {
    font-size: 14px; /* Reduced size */
}
.badge {
    font-size: 10px; /* Reduced size */
}
.btn-sm {
    font-size: 10px; /* Reduced size */
    padding: 2px 5px; /* Reduced size */
}
</style>
     
 <H4>Nghe các bài đăng mới nhất từ ​​những người bạn đang theo dõi</H4>
 <div class="track-card " >
  <div class="track-details-container">
      <div class="track-details">
          <img src="/views/anh/Bedtime Soul.jpg" alt="User Avatar">
          <div>
              <h5 style="font-size: 14px;">Nguyễn Hữu Lộc</h5>
              <small>reposted a track 8 days ago</small>
          </div>
      </div>
      <div class="media">
          <img src="/views/anh/Bedtime Soul.jpg" class="mr-3" alt="Track Image">
          <div class="media-body">
              <h5 class="mt-0">Thu Cuối x Bên Trên Tần Lầu x Chạy Về Nơi Phía Anh .mp3</h5>
              <span class="badge badge-primary">Dance & EDM</span>
          </div>
      </div>
  </div>
  <hr>

  <div class="waveform-container mt-2 " >
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>

      
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <!-- Add more bars as needed -->
      <div class="duration">8:29</div>
  </div>
  <div class="d-flex justify-content-between mt-3">
      <div>
          <button class="btn btn-outline-secondary btn-sm">👍</button>
          <button class="btn btn-outline-secondary btn-sm">🔄</button>
          <button class="btn btn-outline-secondary btn-sm">💾</button>
          <button class="btn btn-outline-secondary btn-sm">📋</button>
          <button class="btn btn-outline-secondary btn-sm">☰</button>
         
      </div>
      <div>
          <div>
              <small>597 likes • 11 reposts • 3 share   • <small>32.7K ▶️</small></small>
          </div>
        
      </div>
  </div>

</div>

      
      <H4>Nghe các bài đăng mới nhất từ ​​những người bạn đang theo dõi</H4>
 <div class="track-card " >
  <div class="track-details-container">
      <div class="track-details">
          <img src="/views/anh/Bedtime Soul.jpg" alt="User Avatar">
          <div>
              <h5 style="font-size: 14px;">Nguyễn Hữu Lộc</h5>
              <small>reposted a track 8 days ago</small>
          </div>
      </div>
      <div class="media">
          <img src="/views/anh/album11.jpg" class="mr-3" alt="Track Image">
          <div class="media-body">
              <h5 class="mt-0"> Chạy Về Nơi Phía Anh .mp3</h5>
              <span class="badge badge-primary">Dance & EDM</span>
          </div>
      </div>
  </div>
  <hr>

  <div class="waveform-container mt-2 " >
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>

      
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <!-- Add more bars as needed -->
      <div class="duration">8:29</div>
  </div>
  <div class="d-flex justify-content-between mt-3">
      <div>
          <button class="btn btn-outline-secondary btn-sm">👍</button>
          <button class="btn btn-outline-secondary btn-sm">🔄</button>
          <button class="btn btn-outline-secondary btn-sm">💾</button>
          <button class="btn btn-outline-secondary btn-sm">📋</button>
          <button class="btn btn-outline-secondary btn-sm">☰</button>
         
      </div>
      <div>
          <div>
              <small>597 likes • 11 reposts • 3 share   • <small>32.7K ▶️</small></small>
          </div>
        
      </div>
  </div>

</div>

      
  
      
      <H4>Nghe các bài đăng mới nhất từ ​​những người bạn đang theo dõi</H4>
 <div class="track-card " >
  <div class="track-details-container">
      <div class="track-details">
          <img src="/views/anh/Bedtime Soul.jpg" alt="User Avatar">
          <div>
              <h5 style="font-size: 14px;">Nguyễn Hữu Lộc</h5>
              <small>reposted a track 8 days ago</small>
          </div>
      </div>
      <div class="media">
          <img src="/views/anh/Bedtime Soul.jpg" class="mr-3" alt="Track Image">
          <div class="media-body">
              <h5 class="mt-0">Thu Cuối x Bên Trên Tần Lầu x Chạy Về Nơi Phía Anh .mp3</h5>
              <span class="badge badge-primary">Dance & EDM</span>
          </div>
      </div>
  </div>
  <hr>

  <div class="waveform-container mt-2 " >
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>

      
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%; width: 2px; margin-left: 1px; animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <div class="waveform-bar" style="height: 80%;width: 2px; margin-left: 1px;  animation-delay: 0.1s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.15s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0.2s;"></div>
      <div class="waveform-bar" style="height: 40%;width: 2px; margin-left: 1px;  animation-delay: 0s;"></div>
      <div class="waveform-bar" style="height: 60%;width: 2px; margin-left: 1px;  animation-delay: 0.05s;"></div>
      <!-- Add more bars as needed -->
      <div class="duration">8:29</div>
  </div>
  <div class="d-flex justify-content-between mt-3">
      <div>
          <button class="btn btn-outline-secondary btn-sm">👍</button>
          <button class="btn btn-outline-secondary btn-sm">🔄</button>
          <button class="btn btn-outline-secondary btn-sm">💾</button>
          <button class="btn btn-outline-secondary btn-sm">📋</button>
          <button class="btn btn-outline-secondary btn-sm">☰</button>
         
      </div>
      <div>
          <div>
              <small>597 likes • 11 reposts • 3 share   • <small>32.7K ▶️</small></small>
          </div>
        
      </div>
  </div>

</div>

      
  
      
  

   