<!-- pages-title-start -->
<?php if ($data != null) { ?>
    <div class="pages-title section-padding">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="pages-title-text text-center">
                        <h2><?= $data['TenSP'] ?></h2>
                        <ul class="text-left">
                            <li><a href="?act=home">Trang chủ</a></li>
                            <li><span> // </span><a href="?act=shop">Cửa Hàng</a></li>
                            <li><span> // </span><?= $data['TenSP'] ?></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- pages-title-end -->
    <!-- product-details-section-start -->
    <div class="product-details pages section-padding-top">
        <div class="container">
            <div class="row">
                <div class="single-list-view">
                    <div class="col-xs-12 col-sm-5 col-md-4">
                        <div class="quick-image">
                            <div class="single-quick-image text-center">
                                <div class="list-img">
                                    <div class="product-f tab-content">
                                        
                                        
                                        <?php if ($data['HinhAnh1'] != null) { ?>
                                            <div class="simpleLens-container tab-pane active fade in" id="sin-2">
                                                <a class="simpleLens-image" data-lens-image="public/<?= $data['HinhAnh1'] ?>" href="#"><img src="public/<?= $data['HinhAnh1'] ?>" alt="" class="simpleLens-big-image"></a>
                                            </div>
                                        <?php } ?>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="quick-thumb">
                                <ul class="product-slider">
                                    
                                    <?php if ($data['HinhAnh1'] != null) { ?>
                                        <li><a data-toggle="tab" href="#sin-2"> <img src="public/<?= $data['HinhAnh1'] ?>" alt="small image" /> </a></li>
                                    <?php } ?>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-7 col-md-8">
                        <div class="quick-right">
                            <div class="list-text">
                                <h3><?= $data['TenSP'] ?></h3>
                                <div class="ratting floatright">
                                    <p>( 27 Rating )</p>
                                    <i class="mdi mdi-star"></i>
                                    <i class="mdi mdi-star"></i>
                                    <i class="mdi mdi-star"></i>
                                    <i class="mdi mdi-star-half"></i>
                                    <i class="mdi mdi-star-outline"></i>
                                </div>
                                <h5><?=number_format($data['DonGia'])?> VNĐ</h5>
                                <?php if ($data['MaDM'] == 1) { ?>
                                    <p><?= $data['MoTa'] ?></p>
                                <?php }?>
                                <div class="list-btn">
                                    <a href="?act=cart&xuli=add&id=<?=$data['MaSP']?>">Thêm vào giỏ</a>
                                    <?php if ($data['MaDM'] == 1) { ?>
                                    <a href="#info">Chi tiết</a>
                                    <?php }?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- single-product item end -->
            <!-- reviews area start -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="reviews padding60 margin-top">
                        <ul class="reviews-tab clearfix" id="info">
                            <?php if ($data['MaDM'] == 1) { ?>
                                <li class="active"><a data-toggle="tab" href="#moreinfo">Đặc điểm</a></li>
                            <?php } ?>
                            <!-- <li><a data-toggle="tab" href="#reviews">Đánh giá</a></li> -->
                        </ul>
                        <div class="tab-content">
                            <?php if ($data['MaDM'] == 1) { ?>
                                <div class="info-reviews moreinfo tab-pane fade in active" id="moreinfo">
                                    <div class="tb">
                                        <h5>Thông tin sản phẩm</h5>
                                        <ul>
                                            <li>
                                                <span>Nhà cung cấp</span>
                                                <div><?= $data['NhaCungCap'] ?></div>
                                            </li>
                                            <li>
                                                <span>Nhà Xuất Bản</span>
                                                <div><?= $data['XuatXu'] ?></div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            <?php } ?>
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- reviews area end -->
        </div>
    </div>
    <!-- product-details section end -->
    <!-- related-products section start -->
    <section class="single-products section-padding">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-title text-center">
                        <h2>Sản phẩm tương tự</h2>
                    </div>
                </div>
            </div>
            <div class="row text-center">
                <?php foreach ($data_lq as $row) { ?>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="single-product">
                            <div class="product-f">
                                <a href="?act=detail&id=<?= $row['MaSP'] ?>"><img src="public/<?= $row['HinhAnh1'] ?>" alt="Product Title" class="img-products" /></a>
                                <div class="actions-btn">
                                    <a href="?act=detail&id=<?= $row['MaSP'] ?>"><i class="mdi mdi-cart"></i></a>
                                    <a href="" data-toggle="modal" ><i class="mdi mdi-eye"></i></a>
                                </div>
                            </div>
                            <div class="product-dsc">
                                <p><a href="?act=detail&id=<?= $row['MaSP'] ?>"><?= $row['TenSP'] ?></a></p>
                                <span><?= number_format($row['DonGia']) ?> VNĐ</span>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                <!-- single product end -->
            </div>
        </div>
    </section>
<?php } else {
    require_once("Views/error-404.php");
} ?>
<!-- related-products section end -->
<!-- quick view start -->
<?php
require_once("Views/quickview.php")
?>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            appId: '2652621865018691',
            xfbml: true,
            version: 'v7.0'
        });
        FB.AppEvents.logPageView();
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {
            return;
        }
        js = d.createElement(s);
        js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
<!-- quick view end -->