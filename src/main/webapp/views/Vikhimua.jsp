   <%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

 <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true" data-bs-backdrop="static" >
            <div class="modal-dialog">
                <div class="modal-content"  style=" padding: 15px;">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="margin-left: 450px;"></button>
                    <form>
                        <h5 class="card-title">1. Select billing cycle</h5>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="billingCycle" id="yearlyBilling" checked>
                            <label class="form-check-label" for="yearlyBilling">
                                Yearly billing <strong>₫1,140,000</strong>, that's <strong>₫95,000/month</strong>
                                <span class="badge bg-danger">48% YEARLY DISCOUNT</span>
                            </label>
                        </div>
                        <div class="form-check mt-2">
                            <input class="form-check-input" type="radio" name="billingCycle" id="monthlyBilling">
                            <label class="form-check-label" for="monthlyBilling">
                                Monthly billing <strong>₫183,500/month</strong>
                            </label>
                        </div>
    
                        <h5 class="card-title mt-4">2. Add payment details <i class="bi bi-lock-fill"></i></h5>
                       
                        <div class="form-check mt-2">
                            <input class="form-check-input" type="radio" name="paymentMethod" id="bankPayment">
                            <label class="form-check-label" for="bankPayment">
                                Ví
                                <select class="form-select mt-2">
                                    <option selected disabled>Select your bank</option>
                                    <option value="vcb">Solana</option>
                                    <option value="vtb">Vietinbank</option>
                                    <option value="acb">ACB</option>
                                    <option value="bidv">BIDV</option>
                                    <option value="mb">MB Bank</option>
                                </select>
                            </label>
                        </div>
                        <hr>
                        <div class="form-group mb-3">
                            <input type="email" class="form-control" placeholder="Nhập tài khoản ">
                        </div>                        <div class="form-group mb-3">
                            <input type="email" class="form-control" placeholder="Nhập số tiền">
                        </div>
        
                        <h5 class="card-title mt-4">3. Review your purchase</h5>
                        <div class="d-flex justify-content-between">
                            <div>
                                <h6>Next Pro</h6>
                                <a href="#" class="text-decoration-none">Do you have a coupon code?</a>
                            </div>
                            <div>
                                <p class="mb-0"><strong>₫1,140,000</strong></p>
                                <p class="mb-0 text-muted">Yearly</p>
                            </div>
                        </div>
                        <p class="text-muted small">Subscription will automatically renew at ₫1,650,000 every year, starting Jun 25, 2025, unless you cancel before the day of your next renewal in your subscription settings. All prices in VND.</p>
                        
                        <button type="submit" class="btn btn-primary w-100">Buy subscription</button>
                        <p class="text-muted small mt-2 text-center">By submitting your payment information and clicking Buy subscription you agree to the <a href="#" class="text-decoration-none">Terms of Use for Artist Subscriptions</a> and <a href="#" class="text-decoration-none">Privacy Policy</a>.</p>
                    </form>
                </div>
            </div>
        </div>