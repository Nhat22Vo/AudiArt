   <%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

 <style>
        .playlist-header {
            background: linear-gradient(to bottom right, #a07961, #46362c);
            color: white;
            padding: 20px;
            border-radius: 5px;
            position: relative;
        }
        .playlist-header img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 5px;
            float: right;
        }
        .playlist-info {
            margin-top: 20px;
        }
        .playlist-stats {
            text-align: left;
        }
        .action-buttons button {
            margin-right: 10px;
        }
        .playlist-header .details {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .playlist-header .details div {
            text-align: left;
        }
        .playlist-header .details .stats {
            text-align: right;
        }
        .playlist-header .hashtag {
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 3px;
            padding: 3px 7px;
            display: inline-block;
        }
        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
    </style>
    
    
      <div class="container mt-5">
        <div class="playlist-header">
            <img src="/img/Poster/album5.jpg" alt="Playlist Image">
            <div class="details">
                <div>
                    <h1>Folk</h1>
                    <h2>Trending Music <span class="badge badge-primary"><i class="fa fa-check-circle"></i></span></h2>
                    <p>7 months ago</p>
                    <p class="hashtag">#Folk</p>
                </div>
               
            </div>
        </div>
        <div class="playlist-info mt-4">
            <div class="buttons">
                <div>
                    <button class="btn btn-outline-primary">Like</button>
                    <button class="btn btn-outline-secondary">Repost</button>
                    <button class="btn btn-outline-secondary">Share</button>
                    <button class="btn btn-outline-secondary">Copy Link</button>
                    <button class="btn btn-outline-secondary">Add to Next up</button>
                </div>
                <div>
                    <p><i class="fa fa-heart"></i> 733</p>
                    <p><i class="fa fa-retweet"></i> 31</p>
                </div>
            </div>
        </div>
    </div>