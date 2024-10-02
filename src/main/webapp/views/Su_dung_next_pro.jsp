<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Next pro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        .banner {
            background-color: #333333;
            color: white;
            padding: 20px;
            text-align: center;
            background-image: url('./views/anh/banner.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            border-radius: 5px;
            margin-top: 20px;
            overflow: hidden;
        }

        .card {
            max-width: 800px;
            margin: auto;
        }

        .btn-primary {
            background-color: #ff5a5f;
            border-color: #ff5a5f;
        }

        .btn-primary:hover {
            background-color: #e14b4d;
            border-color: #e14b4d;
        }

        .banner h1 {
            font-size: 2rem;
            margin-bottom: 15px;
        }

        .banner p {
            margin-bottom: 10px;
        }

        .plans {
            margin-top: 50px;
        }

        .plans h1 {
            margin-bottom: 30px;
        }

        .plan-card {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .plan-card h3,
        .plan-card h4 {
            margin-bottom: 15px;
        }

        .plan-card p {
            margin-bottom: 10px;
        }

        .table-first tbody tr,
        .table-second tbody tr,
        .table-third tbody tr {
            height: 50px;
        }
    </style>
</head>

<body>
    <div class="fixed-header">
        <!-- chức năng -->
        <jsp:include page="Chuc_nang.jsp"/>
    </div>

    <div class="">
        <div class="banner">
            <h1>Get Next Pro for ₫1,140,000/year</h1>
            <p>Unlock the power of SoundCloud with our best plan for artists.</p>
            <p><em>* Discount applies only to first year of subscription.</em></p>
            <div class="row mt-5">
                <div class="col-6 col-md-3">
                    <ul class="list-unstyled">
                        <li class="h4">Unlimited uploads</li>
                        <li>Upload as much music as you want with your community and collaborators</li>
                    </ul>
                </div>
                <div class="col-6 col-md-3">
                    <ul class="list-unstyled">
                        <li class="h4">Build your brand</li>
                        <li>Unlock advanced profile controls and promote your tracks</li>
                    </ul>
                </div>
                <div class="col-6 col-md-3">
                    <ul class="list-unstyled">
                        <li class="h4">Grow your audience</li>
                        <li>Upload new tracks and be heard by up to 100+ listeners with First Fans recommendations</li>
                    </ul>
                </div>
                <div class="col-6 col-md-3">
                    <ul class="list-unstyled">
                        <li class="h4">Get paid</li>
                        <li>Distribute your music on SoundCloud, Spotify, YouTube, and more</li>
                    </ul>
                </div>
            </div>
            <button class="btn btn-primary mt-3" data-bs-toggle="modal" data-bs-target="#loginModal">Get Next Pro</button>
        </div>

        <div class="container plans">
            <h1 class="text-center">Available Plans</h1>
            <div class="row">
                <div class="">
                    <div class="plan-card">
                        <h3>Next Pro</h3>
                        <h4>Starting at ₫95,000 / month</h4>
                        <p>Everything in Next and...</p>
                        <p>Unlimited track uploads</p>
                        <p>Extended reach with up to 100+ First Fans listener autoplay recommendations on new uploads</p>
                        <p>Unlimited distribution to Spotify, Apple Music, TikTok, and more</p>
                        <p>Advanced fan insights and custom listening reports</p>
                        <p>Custom profile control including track spotlight</p>
                        <p>3 free Mastering credits each month</p>
                        <p>Exclusive partner offers from Splice and more</p>
                        <p>Track management tools</p>
                        <p>Premium profile badge</p>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <h1 class="text-center my-4">Compare features.</h1>
            <div class="my-4 p-5">
                <table class="table table-light table-striped text-center">
                    <thead>
                        <tr>
                            <th></th>
                            <th>Next</th>
                            <th>Next Pro</th>
                        </tr>
                        <tr>
                            <th></th>
                            <th>Free</th>
                            <th>Starting at ₫95,000 / month</th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th><button class="btn btn-primary mt-3" data-bs-toggle="modal" data-bs-target="#loginModal">Get Next Pro</button></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Track uploads</td>
                            <td><i class="bi bi-check-lg"></i></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Access to SoundCloud for Artists</td>
                            <td><i class="bi bi-check-lg"></i></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Private track uploads for sharing with collaborators and fans</td>
                            <td><i class="bi bi-check-lg"></i></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Public track uploads, comments, fan messages, and downloads</td>
                            <td><i class="bi bi-check-lg"></i></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Customizable artist profile and bio</td>
                            <td><i class="bi bi-check-lg"></i></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Ability to request profile verification</td>
                            <td><i class="bi bi-check-lg"></i></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Direct fan donations via PayPal, Cash App, Venmo, and more</td>
                            <td><i class="bi bi-check-lg"></i></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Extended reach with up to 100+ First Fans listener autoplay recommendations on new uploads</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Unlimited global release distribution to 60+ social networks and streaming platforms including Spotify, Apple Music, TikTok, and more</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Automatic release distribution to newly added streaming platforms</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Permanent release distribution with regular and uninterrupted royalty payments</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Access to YouTube Content ID, allowing you to be paid when your music is used on YouTube</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Monetize on SoundCloud with fan-powered royalties, our equitable approach which pays artists based on fan listening habits</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Scheduled track releases on SoundCloud and other streaming platforms</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Split royalty payments between you and your collaborators</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Access to priority SoundCloud help and support</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Advanced listener stats & insights, including top listeners, locations, and sources</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Over $1,500 worth of savings on exclusive offers & discounts from partners like Splice, Serato, and Tracklib</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Spotlight your best tracks and playlists by pinning them at the top of your profile</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Replace a SoundCloud track while maintaining your play and like counts</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Free track mastering up to 3 times per month, powered by Dolby</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                        <tr>
                            <td>Premium profile badge visible to fans and collaborators</td>
                            <td></td>
                            <td><i class="bi bi-check-lg"></i></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true" data-bs-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content" style="padding: 15px;">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="margin-left: 450px;"></button>
                    <form action="/wallet" method="POST">
                        <h5 class="card-title">1. Chọn chu kỳ thanh toán</h5>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="billingCycle" id="yearlyBilling" checked>
                            <label class="form-check-label" for="yearlyBilling">
                                Thanh toán hàng năm <strong>₫1,140,000</strong>, that's <strong>₫95,000/month</strong>
                                <span class="badge bg-danger">GIẢM GIÁ 48% HÀNG NĂM</span>
                            </label>
                        </div>
                        <div class="form-check mt-2">
                            <input class="form-check-input" type="radio" name="billingCycle" id="monthlyBilling">
                            <label class="form-check-label" for="monthlyBilling">
                                Thanh toán hàng tháng <strong>₫183,500/month</strong>
                            </label>
                        </div>

                        <h5 class="card-title mt-4">2. Thêm thông tin thanh toán <i class="bi bi-lock-fill"></i></h5>

                        <div class="form-check mt-2">
                            <input class="form-check-input" type="radio" name="paymentMethod" id="bankPayment">
                            <label class="form-check-label" for="bankPayment">
                                Ví
                                <select class="form-select mt-2">
                                    <option selected disabled>Chọn phương thức thanh toán</option>
                                    <option value="solana">Solana</option>
                                </select>
                            </label>
                        </div>
                        <hr>

                        <h5 class="card-title mt-4">3. Xem lại giao dịch mua của bạn</h5>
                        <div class="d-flex justify-content-between">
                            <div>
                                <h6>Next Pro</h6>
                                <a href="#" class="text-decoration-none">Bạn có mã giảm giá không?</a>
                            </div>
                            <div>
                                <p class="mb-0"><strong>₫1,140,000</strong></p>
                                <p class="mb-0 text-muted">Hàng năm</p>
                            </div>
                        </div>
                        <p class="text-muted small">Gói đăng ký sẽ tự động gia hạn ở mức ₫1.650.000 mỗi năm, trừ khi bạn hủy trước ngày gia hạn tiếp theo.</p>

                        <button type="submit"  class="btn btn-primary w-100">Mua đăng kí</button>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="fixed-footer bg-secondary">
            <!--Âm nhạc-->
            <h6><jsp:include page="Am_nhac.jsp"/></h6>
        </div>
    </footer>
</body>

</html>

